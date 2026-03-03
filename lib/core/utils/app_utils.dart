import 'package:intl/intl.dart';

class AppUtils {
  static String today() {
    return DateFormat('yyyy-MM-dd').format(DateTime.now());
  }
}