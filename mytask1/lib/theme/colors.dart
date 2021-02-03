import 'dart:ui';

import 'package:flutter/material.dart';

class AppColor {
  final Color appThemeColor = Colors.redAccent;

  AppColor._privateConstructor();

  static final AppColor _instance = AppColor._privateConstructor();

  static AppColor get instance => _instance;

  Color getAppTheme() => appThemeColor;
}
