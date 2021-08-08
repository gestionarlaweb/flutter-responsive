import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SizeInfo {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData!.size.width;
    screenWidth = _mediaQueryData!.size.height;
  }
}
