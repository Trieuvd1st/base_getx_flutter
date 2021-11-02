import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import '../utils/strings.dart';

class FunctionUtils {
  /// Common Function
  ///
  /// Log
  static void logWhenDebug(String tag, String message) {
    if (kDebugMode)
      log("$tag => ${message.toString()}", name: StringUtils.APP_NAME);
  }

  ///Convert String to Date
  static String stringToDateFormat(
      {dynamic value, String format, String locale}) {
    if (value == null || value.toString().isEmpty) return "";
    String dateString;
    if (locale != null)
      dateString = DateFormat(format, locale)
          .format(DateTime.parse(value.toString()))
          .toString();
    else
      dateString = DateFormat(format)
          .format(DateTime.parse(value.toString()))
          .toString();
    return dateString;
  }

  //Convert Date to String
  static String dateToDateFormat({DateTime value, String format}) {
    String dateString = DateFormat(format).format(value).toString();
    return dateString;
  }

  static Future<bool> checkNetWork() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
      // return true;
    } on SocketException catch (_) {
      return false;
    }
    return false;
  }
}
