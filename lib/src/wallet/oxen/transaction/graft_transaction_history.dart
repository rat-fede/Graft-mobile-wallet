import 'dart:core';

import 'package:flutter/services.dart';
import 'package:graft_coin/transaction_history.dart' as graft_transaction_history;
import 'package:graft_wallet/src/wallet/transaction/transaction_history.dart';
import 'package:graft_wallet/src/wallet/transaction/transaction_info.dart';
import 'package:rxdart/rxdart.dart';

List<TransactionInfo> _getAllTransactions(dynamic _) => graft_transaction_history
    .getAllTransactions()
    .map((row) => TransactionInfo.fromRow(row))
    .toList();

class graftTransactionHistory extends TransactionHistory {
  graftTransactionHistory()
      : _transactions = BehaviorSubject<List<TransactionInfo>>.seeded([]);

  @override
  Observable<List<TransactionInfo>> get transactions => _transactions.stream;

  final BehaviorSubject<List<TransactionInfo>> _transactions;
  bool _isUpdating = false;
  bool _isRefreshing = false;
  bool _needToCheckForRefresh = false;

  @override
  Future update() async {
    if (_isUpdating) {
      return;
    }

    try {
      _isUpdating = true;
      await refresh();
      _transactions.value = await getAll(force: true);
      _isUpdating = false;

      if (!_needToCheckForRefresh) {
        _needToCheckForRefresh = true;
      }
    } catch (e) {
      _isUpdating = false;
      print(e);
      rethrow;
    }
  }

  @override
  Future<List<TransactionInfo>> getAll({bool force = false}) async =>
      _getAllTransactions(null);

  @override
  Future<int> count() async => graft_transaction_history.countOfTransactions();

  @override
  Future refresh() async {
    if (_isRefreshing) {
      return;
    }

    try {
      _isRefreshing = true;
      graft_transaction_history.refreshTransactions();
      _isRefreshing = false;
    } on PlatformException catch (e) {
      _isRefreshing = false;
      print(e);
      rethrow;
    }
  }
}
