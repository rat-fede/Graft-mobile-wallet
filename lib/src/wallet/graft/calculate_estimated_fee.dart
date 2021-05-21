import 'package:graft_coin/transaction_history.dart';
import 'package:graft_wallet/src/wallet/graft/graft_amount_format.dart';
import 'package:graft_wallet/src/wallet/graft/transaction/transaction_priority.dart';

double calculateEstimatedFee({graftTransactionPriority priority}) {
  return graftAmountToDouble(estimateTransactionFee(priority.raw));
}
