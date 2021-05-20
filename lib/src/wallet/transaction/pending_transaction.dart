import 'package:flutter/foundation.dart';
import 'package:graft_coin/transaction_history.dart' as transaction_history;
import 'package:graft_coin/graft_coin_structs.dart';
import 'package:graft_wallet/src/wallet/graft/graft_amount_format.dart';

class PendingTransaction {
  PendingTransaction(
      {@required this.amount, @required this.fee, @required this.hash});

  PendingTransaction.fromTransactionDescription(
      PendingTransactionDescription transactionDescription)
      : amount = graftAmountToString(transactionDescription.amount),
        fee = graftAmountToString(transactionDescription.fee),
        hash = transactionDescription.hash,
        _pointerAddress = transactionDescription.pointerAddress;

  final String amount;
  final String fee;
  final String hash;

  int _pointerAddress;

  Future<void> commit() async => transaction_history
      .commitTransactionFromPointerAddress(address: _pointerAddress);
}
