import 'package:intl/intl.dart';

extension DateTimeFormatting on DateTime {
  String format({String pattern = 'dd/MM/yyyy'}) {
    return DateFormat(pattern).format(this);
  }
}

extension StringExtension on String {
  String toPhone() {
    return "+${substring(0, 2)} (${substring(3, 5)}) ${substring(5)} ";
  }
}
