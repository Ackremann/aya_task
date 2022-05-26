import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.onPrimary = Colors.white,
    this.primary = const Color(0xff4EA831),
    required this.height,
    required this.width,
  }) : super(key: key);
  final void Function()? onPressed;
  final String label;
  final Color? primary;
  final Color? onPrimary;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        primary: primary,
        onPrimary: onPrimary,
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}

double sizeFromHeight(BuildContext context, double fraction) {
  if (fraction <= 0) fraction = 1;
  final mediaQuery = MediaQuery.of(context);
  final height = mediaQuery.size.height;
  fraction = (height - mediaQuery.padding.top - AppBar().preferredSize.height) /
      fraction;
  return fraction;
}

double sizeFromWidth(BuildContext context, double fraction) {
  if (fraction <= 0) fraction = 1;
  final mediaQuery = MediaQuery.of(context);
  final width = mediaQuery.size.width;
  return width / fraction;
}
