import 'package:graft_wallet/generated/l10n.dart';
import 'package:graft_wallet/src/domain/common/enumerable_item.dart';

class graftTransactionPriority extends EnumerableItem<int> with Serializable<int> {
  const graftTransactionPriority({String title, int raw})
      : super(title: title, raw: raw);

  static const all = [
    graftTransactionPriority.slow,
    graftTransactionPriority.blink
  ];

  static const slow = graftTransactionPriority(title: 'Slow', raw: 1);
  static const blink = graftTransactionPriority(title: 'Blink', raw: 5);
  static const standard = blink;

  static graftTransactionPriority deserialize({int raw}) {
    switch (raw) {
      case 1:
        return slow;
      case 5:
        return blink;
      default:
        return null;
    }
  }

  @override
  String toString() {
    switch (this) {
      case graftTransactionPriority.slow:
        return S.current.transaction_priority_slow;
      case graftTransactionPriority.blink:
        return S.current.transaction_priority_blink;
      default:
        return '';
    }
  }
}
