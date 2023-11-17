import 'package:intl/intl.dart';

class DateFormatter {
  static String formatDateToTime(DateTime dateTime) {
    return DateFormat('h:mm a').format(dateTime);
  }
}
