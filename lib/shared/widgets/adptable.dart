import 'package:flutter/material.dart';

class Adaptable extends Flex {
  final double screenWidth;
  final double breakpoint;

  const Adaptable({
    super.key,
    this.breakpoint = 600,
    required this.screenWidth,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.spacing,
    super.children,
  }) : super(
         direction: screenWidth > breakpoint ? Axis.horizontal : Axis.vertical,
       );
}
