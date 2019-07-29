import 'package:flutter/material.dart';

import 'BookingPage.dart';
import 'CariKereta.dart';
import 'DetailOrder.dart';
import 'MyHomePage.dart';
import 'SplashScreen.dart';
import 'adaptive_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getAdaptiveTheme(context),
      home: SplashScreen(),
    );
  }
}


