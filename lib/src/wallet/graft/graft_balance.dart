import 'package:flutter/foundation.dart';
import 'package:graft_wallet/src/wallet/balance.dart';

class graftBalance extends Balance {
  graftBalance({@required this.fullBalance, @required this.unlockedBalance});

  final int fullBalance;
  final int unlockedBalance;
}
