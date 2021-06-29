import 'package:intl/intl.dart';

extension DateFormatter on String {
  String toMonthDateYearFormat() {
    var inputFormat = DateFormat('y-M-d');
    final dateFormat = DateFormat.yMMMMd('en_US');
    var date = inputFormat.parse(this);
    return dateFormat.format(date);
  }
}
