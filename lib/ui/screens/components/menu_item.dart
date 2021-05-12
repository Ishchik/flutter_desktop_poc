import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
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
