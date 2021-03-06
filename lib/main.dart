import 'dart:io';

import 'package:flutter/material.dart';

import 'ui/screens/home_screen_big.dart';
import 'ui/screens/home_screen_small.dart';

void main() {
  runApp(FlutterDesktopPOC());
}

class FlutterDesktopPOC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 2.0 POC',
      debugShowCheckedModeBanner: false,
      home: Platform.isIOS || Platform.isAndroid
          ? HomeScreenSmall()
          : HomeScreenBig(),
    );
  }
}
