import 'package:graft_wallet/src/wallet/transaction/transaction_creation_credentials.dart';

class graftStakeTransactionCreationCredentials
    extends TransactionCreationCredentials {
  graftStakeTransactionCreationCredentials({this.address, this.amount});

  final String address;
  final String amount;
}
