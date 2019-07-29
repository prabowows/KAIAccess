import 'package:flutter/material.dart';

final ThemeData _androidTheme = ThemeData(
  primaryColor: Color(0xff0053A0),
  accentColor: Color(0xff0053A0),
  fontFamily: 'raleway',
);

final ThemeData _iosTheme = ThemeData(
  primaryColor: Color(0xff0053A0),
  primaryColorLight: Color(0xff0053A0),
  primaryColorDark: Color(0xff0053A0),
  accentColor: Color(0xff0053A0),
  unselectedWidgetColor: Color(0xff0053A0),
  disabledColor: Color(0xff0053A0),
  appBarTheme: AppBarTheme(brightness: Brightness.dark),
  fontFamily: 'raleway',
);

ThemeData getAdaptiveTheme(context) {
  return Theme.of(context).platform == TargetPlatform.android
      ? _androidTheme
      : _iosTheme;
}
