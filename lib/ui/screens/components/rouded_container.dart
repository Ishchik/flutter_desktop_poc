import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundedContainer extends StatelessWidget {
  RoundedContainer({
    this.child,
    this.height,
    this.width,
    this.color = Colors.white,
    this.borderColor,
    this.contentPadding = const EdgeInsets.all(20.0),
  });

  final Widget child;
  final double height;
  final double width;
  final Color color;
  final Color borderColor;
  final EdgeInsets contentPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: color,
      ),
      height: height,
      width: width,
      child: Padding(
        padding: contentPadding,
        child: child,
      ),
    );
  }
}
