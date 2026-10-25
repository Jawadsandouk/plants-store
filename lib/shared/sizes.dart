import 'package:flutter/material.dart';

extension ScreenSize on BuildContext {
  double get ScreenWidth => MediaQuery.widthOf(this);
  double get ScreenHeight => MediaQuery.heightOf(this);
}