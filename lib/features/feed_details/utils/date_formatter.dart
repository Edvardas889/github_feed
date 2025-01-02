import 'package:intl/intl.dart';

class DateFormatter {
  static final _dateFormat = DateFormat('yyyy-MM-dd HH:mm:ss');

  String format(String? date) {
    if (date?.isNotEmpty == true) {
      final dateTime = DateTime.parse(date!);
      return _dateFormat.format(dateTime);
    }
    return "";
  }
}
