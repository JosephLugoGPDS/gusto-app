import 'package:intl/intl.dart';

extension DatetimeExtension on DateTime {
  String currentDateStr() {
    return DateFormat("dd/MM/yyyy").format(this);
  }
}
