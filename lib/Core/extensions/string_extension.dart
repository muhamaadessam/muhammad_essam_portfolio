extension StringExtension on String {
  int get toInt => int.parse(this);

  double get toDouble => double.parse(this);

  DateTime get toDataTime => DateTime.parse(this);

  Uri get toUri => Uri.parse(this);

  // get context => context;
  String numberFormat(double number) {
    if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    } else if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(1)}k';
    } else {
      return number.toString();
    }
  }
}
