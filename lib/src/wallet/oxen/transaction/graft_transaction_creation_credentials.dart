import 'package:graft_wallet/src/wallet/graft/transaction/transaction_priority.dart';
import 'package:graft_wallet/src/wallet/transaction/transaction_creation_credentials.dart';

class graftTransactionCreationCredentials
    extends TransactionCreationCredentials {
  graftTransactionCreationCredentials(
      {this.address, this.priority, this.amount});

  final String address;
  final String amount;
  final graftTransactionPriority priority;
}
