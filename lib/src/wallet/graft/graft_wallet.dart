import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:graft_coin/stake.dart' as graft_stake;
import 'package:graft_coin/transaction_history.dart' as transaction_history;
import 'package:graft_coin/wallet.dart' as graft_wallet;
import 'package:graft_wallet/src/node/node.dart';
import 'package:graft_wallet/src/node/sync_status.dart';
import 'package:graft_wallet/src/wallet/balance.dart';
import 'package:graft_wallet/src/wallet/graft/account.dart';
import 'package:graft_wallet/src/wallet/graft/account_list.dart';
import 'package:graft_wallet/src/wallet/graft/graft_balance.dart';
import 'package:graft_wallet/src/wallet/graft/subaddress.dart';
import 'package:graft_wallet/src/wallet/graft/subaddress_list.dart';
import 'package:graft_wallet/src/wallet/graft/transaction/graft_stake_transaction_creation_credentials.dart';
import 'package:graft_wallet/src/wallet/graft/transaction/graft_transaction_creation_credentials.dart';
import 'package:graft_wallet/src/wallet/graft/transaction/graft_transaction_history.dart';
import 'package:graft_wallet/src/wallet/transaction/pending_transaction.dart';
import 'package:graft_wallet/src/wallet/transaction/transaction_creation_credentials.dart';
import 'package:graft_wallet/src/wallet/transaction/transaction_history.dart';
import 'package:graft_wallet/src/wallet/wallet.dart';
import 'package:graft_wallet/src/wallet/wallet_info.dart';
import 'package:graft_wallet/src/wallet/wallet_type.dart';
import 'package:rxdart/rxdart.dart';

const graftBlockSize = 1000;

class graftWallet extends Wallet {
  graftWallet({this.walletInfoSource, this.walletInfo}) {
    _cachedBlockchainHeight = 0;
    _isSaving = false;
    _lastSaveTime = 0;
    _lastRefreshedTime = 0;
    _refreshHeight = 0;
    _lastSyncHeight = 0;
    _name = BehaviorSubject<String>();
    _address = BehaviorSubject<String>();
    _syncStatus = BehaviorSubject<SyncStatus>();
    _onBalanceChange = BehaviorSubject<graftBalance>();
    _account = BehaviorSubject<Account>()..add(Account(id: 0));
    _subaddress = BehaviorSubject<Subaddress>();
  }

  static Future<graftWallet> createdWallet(
      {Box<WalletInfo> walletInfoSource,
      String name,
      bool isRecovery = false,
      int restoreHeight = 0}) async {
    const type = WalletType.graft;
    final id = walletTypeToString(type).toLowerCase() + '_' + name;
    final walletInfo = WalletInfo(
        id: id,
        name: name,
        type: type,
        isRecovery: isRecovery,
        restoreHeight: restoreHeight,
        timestamp: DateTime.now().millisecondsSinceEpoch);
    await walletInfoSource.add(walletInfo);

    return await configured(
        walletInfo: walletInfo, walletInfoSource: walletInfoSource);
  }

  static Future<graftWallet> load(
      Box<WalletInfo> walletInfoSource, String name, WalletType type) async {
    final id = walletTypeToString(type).toLowerCase() + '_' + name;
    final walletInfo = walletInfoSource.values
        .firstWhere((info) => info.id == id, orElse: () => null);
    return await configured(
        walletInfoSource: walletInfoSource, walletInfo: walletInfo);
  }

  static Future<graftWallet> configured(
      {@required Box<WalletInfo> walletInfoSource,
      @required WalletInfo walletInfo}) async {
    final wallet =
        graftWallet(walletInfoSource: walletInfoSource, walletInfo: walletInfo);

    if (walletInfo.isRecovery) {
      wallet.setRecoveringFromSeed();

      if (walletInfo.restoreHeight != null) {
        wallet.setRefreshFromBlockHeight(height: walletInfo.restoreHeight);
      }
    }

    return wallet;
  }

  @override
  String get address => _address.value;

  @override
  String get name => _name.value;

  @override
  WalletType getType() => WalletType.graft;

  @override
  Observable<SyncStatus> get syncStatus => _syncStatus.stream;

  @override
  Observable<Balance> get onBalanceChange => _onBalanceChange.stream;

  @override
  Observable<String> get onNameChange => _name.stream;

  @override
  Observable<String> get onAddressChange => _address.stream;

  Observable<Account> get onAccountChange => _account.stream;

  Observable<Subaddress> get subaddress => _subaddress.stream;

  bool get isRecovery => walletInfo.isRecovery;

  Account get account => _account.value;

  Box<WalletInfo> walletInfoSource;
  WalletInfo walletInfo;

  graft_wallet.SyncListener _listener;
  BehaviorSubject<Account> _account;
  BehaviorSubject<graftBalance> _onBalanceChange;
  BehaviorSubject<SyncStatus> _syncStatus;
  BehaviorSubject<String> _name;
  BehaviorSubject<String> _address;
  BehaviorSubject<Subaddress> _subaddress;
  int _cachedBlockchainHeight;
  bool _isSaving;
  int _lastSaveTime;
  int _lastRefreshedTime;
  int _refreshHeight;
  int _lastSyncHeight;

  TransactionHistory _cachedTransactionHistory;
  SubaddressList _cachedSubaddressList;
  AccountList _cachedAccountList;
  Future<int> _cachedGetNodeHeightOrUpdateRequest;

  @override
  Future updateInfo() async {
    _name.value = await getName();
    final acccountList = getAccountList();
    acccountList.refresh();
    _account.value = acccountList.getAll().first;
    final subaddressList = getSubaddress();
    await subaddressList.refresh(
        accountIndex: _account.value != null ? _account.value.id : 0);
    final subaddresses = subaddressList.getAll();
    _subaddress.value = subaddresses.first;
    _address.value = await getAddress();
    setListeners();
  }

  @override
  Future<String> getFilename() async => graft_wallet.getFilename();

  @override
  Future<String> getName() async => getFilename()
      .then((filename) => filename.split('/'))
      .then((splitted) => splitted.last);

  @override
  Future<String> getAddress() async => graft_wallet.getAddress(
      accountIndex: _account.value.id, addressIndex: _subaddress.value.id);

  @override
  Future<String> getSeed() async => graft_wallet.getSeed();

  @override
  Future<int> getFullBalance() async =>
      graft_wallet.getFullBalance(accountIndex: _account.value.id);

  @override
  Future<int> getUnlockedBalance() async =>
      graft_wallet.getUnlockedBalance(accountIndex: _account.value.id);

  @override
  int getCurrentHeight() => graft_wallet.getCurrentHeight();

  @override
  Future<int> getNodeHeight() async {
    _cachedGetNodeHeightOrUpdateRequest ??=
        graft_wallet.getNodeHeight().then((value) {
      _cachedGetNodeHeightOrUpdateRequest = null;
      return value;
    });

    return _cachedGetNodeHeightOrUpdateRequest;
  }

  @override
  Future<bool> isConnected() async => graft_wallet.isConnected();

  @override
  Future<Map<String, String>> getKeys() async => {
        'publicViewKey': graft_wallet.getPublicViewKey(),
        'privateViewKey': graft_wallet.getSecretViewKey(),
        'publicSpendKey': graft_wallet.getPublicSpendKey(),
        'privateSpendKey': graft_wallet.getSecretSpendKey()
      };

  @override
  TransactionHistory getHistory() {
    _cachedTransactionHistory ??= graftTransactionHistory();

    return _cachedTransactionHistory;
  }

  SubaddressList getSubaddress() {
    _cachedSubaddressList ??= SubaddressList();

    return _cachedSubaddressList;
  }

  AccountList getAccountList() {
    _cachedAccountList ??= AccountList();

    return _cachedAccountList;
  }

  @override
  Future close() async {
    _listener?.stop();
    graft_wallet.closeCurrentWallet();
    await _name.close();
    await _address.close();
    await _subaddress.close();
  }

  @override
  Future connectToNode(
      {Node node, bool useSSL = false, bool isLightWallet = false}) async {
    try {
      _syncStatus.value = ConnectingSyncStatus();

      // Check if node is online to avoid crash
      final nodeIsOnline = await node.isOnline();
      if (!nodeIsOnline) {
        _syncStatus.value = FailedSyncStatus();
        return;
      }

      await graft_wallet.setupNode(
          address: node.uri,
          login: node.login,
          password: node.password,
          useSSL: useSSL,
          isLightWallet: isLightWallet);
      _syncStatus.value = ConnectedSyncStatus();
    } catch (e) {
      _syncStatus.value = FailedSyncStatus();
      print(e);
    }
  }

  @override
  Future startSync() async {
    try {
      _setInitialHeight();
    } catch (_) {}

    print('Starting from height: ${getCurrentHeight()}');

    try {
      _syncStatus.value = StartingSyncStatus();
      graft_wallet.startRefresh();
      _setListeners();
      _listener?.start();
    } catch (e) {
      _syncStatus.value = FailedSyncStatus();
      print(e);
      rethrow;
    }
  }

  Future askForSave() async {
    final diff = DateTime.now().millisecondsSinceEpoch - _lastSaveTime;

    if (_lastSaveTime != 0 && diff < 120000) {
      return;
    }

    await store();
  }

  Future<int> getNodeHeightOrUpdate(int baseHeight) async {
    if (_cachedBlockchainHeight < baseHeight) {
      _cachedBlockchainHeight = await getNodeHeight();
    }

    return _cachedBlockchainHeight;
  }

  @override
  Future<PendingTransaction> createStake(
      TransactionCreationCredentials credentials) async {
    final _credentials = credentials as graftStakeTransactionCreationCredentials;
    final transactionDescription =
        await graft_stake.createStake(_credentials.address, _credentials.amount);

    return PendingTransaction.fromTransactionDescription(
        transactionDescription);
  }

  @override
  Future<PendingTransaction> createTransaction(
      TransactionCreationCredentials credentials) async {
    final _credentials = credentials as graftTransactionCreationCredentials;
    final transactionDescription = await transaction_history.createTransaction(
        address: _credentials.address,
        amount: _credentials.amount,
        priorityRaw: _credentials.priority.serialize(),
        accountIndex: _account.value.id);

    return PendingTransaction.fromTransactionDescription(
        transactionDescription);
  }

  @override
  Future rescan({int restoreHeight = 0}) async {
    _syncStatus.value = StartingSyncStatus();
    setRefreshFromBlockHeight(height: restoreHeight);
    graft_wallet.rescanBlockchainAsync();
    _syncStatus.value = StartingSyncStatus();
  }

  void setRecoveringFromSeed() =>
      graft_wallet.setRecoveringFromSeed(isRecovery: true);

  void setRefreshFromBlockHeight({int height}) =>
      graft_wallet.setRefreshFromBlockHeight(height: height);

  Future setAsRecovered() async {
    walletInfo.isRecovery = false;
    await walletInfo.save();
  }

  Future askForUpdateBalance() async {
    final fullBalance = await getFullBalance();
    final unlockedBalance = await getUnlockedBalance();
    final needToChange = _onBalanceChange.value != null
        ? _onBalanceChange.value.fullBalance != fullBalance ||
            _onBalanceChange.value.unlockedBalance != unlockedBalance
        : true;

    if (!needToChange) {
      return;
    }

    _onBalanceChange.add(graftBalance(
        fullBalance: fullBalance, unlockedBalance: unlockedBalance));
  }

  Future askForUpdateTransactionHistory() async => await getHistory().update();

  void changeCurrentSubaddress(Subaddress subaddress) =>
      _subaddress.value = subaddress;

  void changeAccount(Account account) {
    _account.add(account);

    getSubaddress()
        .refresh(accountIndex: account.id)
        .then((dynamic _) => getSubaddress().getAll())
        .then((subaddresses) => _subaddress.value = subaddresses[0]);
  }

  Future store() async {
    if (_isSaving) {
      return;
    }

    try {
      _isSaving = true;
      await graft_wallet.store();
      _isSaving = false;
    } on PlatformException catch (e) {
      print(e);
      _isSaving = false;
      rethrow;
    }
  }

  graft_wallet.SyncListener setListeners() =>
      graft_wallet.setListeners(_onNewBlock, _onNewTransaction);

  Future _onNewBlock(int height, int blocksLeft, double ptc) async {
    await askForUpdateTransactionHistory();
    await askForUpdateBalance();

    if (blocksLeft < 100) {
      _syncStatus.add(SyncedSyncStatus());
      await graft_wallet.store();

      if (walletInfo.isRecovery) {
        await setAsRecovered();
      }
    } else {
      _syncStatus.add(SyncingSyncStatus(blocksLeft, ptc));
    }

    if (blocksLeft <= 1) {
      graft_wallet.setRefreshFromBlockHeight(height: height);
    }
  }

  void _setListeners() {
    _listener?.stop();
    _listener = graft_wallet.setListeners(_onNewBlock, _onNewTransaction);
  }

  void _setInitialHeight() {
    if (walletInfo.isRecovery) {
      return;
    }

    final currentHeight = getCurrentHeight();

    if (currentHeight <= 1) {
      final height = _getHeightByDate(walletInfo.date);
      graft_wallet.setRecoveringFromSeed(isRecovery: true);
      graft_wallet.setRefreshFromBlockHeight(height: height);
    }
  }

  int _getHeightDistance(DateTime date) {
    final distance =
        DateTime.now().millisecondsSinceEpoch - date.millisecondsSinceEpoch;
    final daysTmp = (distance / 86400).round();
    final days = daysTmp < 1 ? 1 : daysTmp;

    return days * 1000;
  }

  int _getHeightByDate(DateTime date) {
    final nodeHeight = graft_wallet.getNodeHeightSync();
    final heightDistance = _getHeightDistance(date);

    if (nodeHeight <= 0) {
      return 0;
    }

    return nodeHeight - heightDistance;
  }

  Future _onNeedToRefresh() async {
    try {
      final currentHeight = getCurrentHeight();
      final nodeHeight = await getNodeHeightOrUpdate(currentHeight);

      // no blocks - maybe we're not connected to the node ?
      if (currentHeight <= 1 || nodeHeight == 0) {
        return;
      }

      if (_syncStatus.value is FailedSyncStatus) {
        return;
      }

      await askForUpdateBalance();

      final heightDifference = nodeHeight - currentHeight;
      final isRefreshed = heightDifference < graftBlockSize;

      if (isRefreshed) {
        _syncStatus.add(SyncedSyncStatus());

        if (isRecovery) {
          await setAsRecovered();
        }
      }

      final now = DateTime.now().millisecondsSinceEpoch;
      final lastRefreshedTimeDifference = now - _lastRefreshedTime;

      if (lastRefreshedTimeDifference >= 60000) {
        await askForSave();
        _lastRefreshedTime = now;
      }
    } catch (e) {
      print(e);
    }
  }

  Future _onNewTransaction() async {
    await askForUpdateBalance();
    await askForUpdateTransactionHistory();
  }
}
