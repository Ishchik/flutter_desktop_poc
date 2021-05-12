import 'package:flutter/material.dart';

import 'menu_item.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 4,
            offset: Offset(3, 0),
          ),
        ],
      ),
      width: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 15),
          Icon(
            Icons.add_box,
            color: Colors.purple,
            size: 56,
          ),
          const SizedBox(height: 30),
          MenuItem(
            enabled: false,
            icon: Icons.map,
          ),
          const SizedBox(height: 30),
          MenuItem(
            enabled: false,
            icon: Icons.folder_open,
          ),
          const SizedBox(height: 30),
          MenuItem(
            enabled: true,
            icon: Icons.stacked_line_chart,
          ),
          const SizedBox(height: 30),
          MenuItem(
            enabled: false,
            icon: Icons.medical_services,
          ),
          const SizedBox(height: 30),
          MenuItem(
            enabled: false,
            icon: Icons.calendar_today_outlined,
          ),
          const SizedBox(height: 30),
          MenuItem(
            enabled: false,
            icon: Icons.money,
          ),
          const SizedBox(height: 30),
          MenuItem(
            enabled: false,
            icon: Icons.email,
          ),
        ],
      ),
    );
  }
}
