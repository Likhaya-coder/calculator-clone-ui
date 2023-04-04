import 'package:flutter/material.dart';
import 'package:simple_calculator/constants.dart';

class CustomButtons extends StatelessWidget {
  final String label;
  final IconData? icon;
  final VoidCallback? onPress;
  final TextStyle style;

  const CustomButtons(
      {super.key,
        required this.label,
        this.icon,
        this.onPress,
        required this.style});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      fillColor: kDarkNavyColor,
      textStyle: style,
      constraints: const BoxConstraints(minWidth: 50.0, minHeight: 50.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(label),
    );
  }
}