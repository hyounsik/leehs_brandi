import 'package:intl/intl.dart';

String formatyMD(DateTime date) => DateFormat.yMMMMd().format(date);
String formatHm(DateTime date) => DateFormat.Hm().format(date);
String formatHms(DateTime date) => DateFormat.Hms().format(date);

String formatSimpleAgoTime(DateTime date) {
  DateTime now = DateTime.now();
  int mSec = now.millisecondsSinceEpoch - date.millisecondsSinceEpoch;
  int sec = (mSec ~/ 1000);
  return formatSimpleTime(sec);
}

String formatSimpleTime(int sec) {
  const k1M = 60;
  const k1H = k1M * 60;
  const k1D = k1H * 24;
  const k1W = k1D * 7;
  const k1m = k1D * 30;
  const k1Y = k1D * 365;
  if (sec < k1M) {
    return '$sec sec';
  } else if (sec < k1H) {
    return '${(sec / k1M).round()} min';
  } else if (sec < k1D) {
    return '${(sec / k1H).round()} hour';
  } else if (sec < k1W) {
    return '${(sec / k1D).round()} day';
  } else if (sec < k1m) {
    return '${(sec / k1W).round()} week';
  } else if (sec < k1Y) {
    return '${(sec / k1m).round()} month';
  } else {
    return '${(sec / k1Y).round()} year';
  }
}

extension AppStringExtension on String {
  String spaceToBlank() {
    return replaceAll(' ', '\b');
  }
}
