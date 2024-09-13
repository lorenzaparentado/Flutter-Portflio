import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget child;
  final Color boxColor;
  final Color boxShadowColor;
  final double offset;
  final double borderRadius;

  const CustomContainer({
    Key? key,
    this.height,
    this.width,
    required this.child,
    required this.boxColor,
    required this.boxShadowColor,
    required this.offset,
    required this.borderRadius,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: child,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: boxShadowColor,
            offset: Offset(-offset, offset),
            blurRadius: 0,
            blurStyle: BlurStyle.solid,
          ),
        ],
      ),
    );
  }
}
