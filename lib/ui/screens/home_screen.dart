import 'package:desktop_poc/ui/screens/components/side_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(),
          ),
          SideMenu(),
        ],
      ),
    );
  }
}
