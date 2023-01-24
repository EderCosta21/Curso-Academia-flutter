import 'package:flutter/cupertino.dart';

extension SizeExtensions on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  double percentyWidth(double percent) => screenWidth * percent;
  double percentyHeight(double percent) => screenHeight * percent;
}
