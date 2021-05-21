import 'package:intl/intl.dart';
import 'package:graft_wallet/src/wallet/crypto_amount_format.dart';

const graftAmountDivider = 1000000000;

String graftAmountToString(int amount,
    {AmountDetail detail = AmountDetail.ultra}) {
  final graftAmountFormat = NumberFormat()
    ..maximumFractionDigits = detail.fraction
    ..minimumFractionDigits = 1;
  return graftAmountFormat.format(graftAmountToDouble(amount));
}

double graftAmountToDouble(int amount) =>
    cryptoAmountToDouble(amount: amount, divider: graftAmountDivider);
