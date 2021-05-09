import 'package:flutter/material.dart';

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
          _MenuItem(
            enabled: false,
            icon: Icons.map,
          ),
          const SizedBox(height: 30),
          _MenuItem(
            enabled: false,
            icon: Icons.folder_open,
          ),
          const SizedBox(height: 30),
          _MenuItem(
            enabled: true,
            icon: Icons.stacked_line_chart,
          ),
          const SizedBox(height: 30),
          _MenuItem(
            enabled: false,
            icon: Icons.medical_services,
          ),
          const SizedBox(height: 30),
          _MenuItem(
            enabled: false,
            icon: Icons.calendar_today_outlined,
          ),
          const SizedBox(height: 30),
          _MenuItem(
            enabled: false,
            icon: Icons.money,
          ),
          const SizedBox(height: 30),
          _MenuItem(
            enabled: false,
            icon: Icons.email,
          ),
        ],
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  const _MenuItem({
    Key key,
    this.enabled,
    this.icon,
  }) : super(key: key);

  final bool enabled;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        if (enabled)
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 4,
                ),
              ],
            ),
          ),
        Icon(
          icon,
          size: 36,
          color: enabled ? Colors.purple : Colors.grey,
        ),
      ],
    );
  }
}
