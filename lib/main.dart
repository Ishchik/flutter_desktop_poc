import 'dart:io';

import 'package:flutter/material.dart';

import 'services/window_manager/window_manager.dart';
import 'ui/screens/home_screen_big.dart';
import 'ui/screens/home_screen_small.dart';

void main() async {
  ValueKey key;
  if (Platform.isMacOS) {
    WidgetsFlutterBinding.ensureInitialized();
    final _key = await WindowController.lastWindowKey();
    key = ValueKey(_key);
  }
  runApp(FlutterDesktopPOC(key: key));
}

class FlutterDesktopPOC extends StatelessWidget {
  const FlutterDesktopPOC({ValueKey key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 2.0 POC',
      debugShowCheckedModeBanner: false,
      home: Platform.isIOS || Platform.isAndroid
          ? HomeScreenSmall()
          : HomeScreenBig(windowKey: key),
    );
  }
}
