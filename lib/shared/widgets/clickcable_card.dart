import 'package:flutter/material.dart';

class ClickcableCard extends StatelessWidget {
  final MainAxisAlignment
  mainAxisAlignment;
  final VoidCallback onTap;
  final VoidCallback onClickTail;
  final VoidCallback onClickLead;
  final bool borderOnForeground;
  final Widget child;
  final Widget lead;
  final Widget trail;
  final double spacing;
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
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.onClickLead = VoidCallbackAction.new,
    this.onClickTail = VoidCallbackAction.new,
    this.spacing = 0.0,
    this.lead = const SizedBox.shrink(),
    this.trail = const SizedBox.shrink(),
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

  BorderRadius? _getBorderRadius(ShapeBorder? shape, BuildContext context) {
    if (shape is RoundedRectangleBorder) {
      return shape.borderRadius.resolve(Directionality.of(context));
    } else if (shape is BeveledRectangleBorder) {
      return shape.borderRadius.resolve(Directionality.of(context));
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final BorderRadius? inkWellBorderRadius = _getBorderRadius(shape, context);

    return InkWell(
      onTap: onTap,
      borderRadius: inkWellBorderRadius,
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
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: spacing,
          mainAxisAlignment: mainAxisAlignment,
          children: [
            InkWell(onTap: () => onClickLead(), child: lead),
            child,
            InkWell(onTap: () => onClickTail(), child: trail),
          ],
        ),
      ),
    );
  }
}
