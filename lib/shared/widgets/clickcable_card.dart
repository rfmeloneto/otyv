import 'package:flutter/material.dart';

class ClickcableCard extends StatelessWidget {
  final VoidCallback onTap;
  final bool borderOnForeground;
  final Widget child;
  final Clip? clipBehavior;
  final Color? color;
  final double? elevation;
  final Color? shadowColor;
  final ShapeBorder? shape;
  final bool semanticContainer;
  final Color? surfaceTintColor;
  final EdgeInsetsGeometry? margin;

  const ClickcableCard({
    super.key,
    required this.onTap,
    required this.child,
    this.borderOnForeground = true,
    this.clipBehavior,
    this.color,
    this.elevation,
    this.shadowColor,
    this.shape,
    this.semanticContainer = true,
    this.surfaceTintColor,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        borderOnForeground: borderOnForeground,
        clipBehavior: clipBehavior,
        color: color,
        elevation: elevation,
        shadowColor: shadowColor,
        margin: margin,
        shape: shape,
        semanticContainer: semanticContainer,
        surfaceTintColor: surfaceTintColor,
        child: child,
      ),
    );
  }
}
