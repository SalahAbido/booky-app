import 'package:booky_app/constant.dart';
import 'package:flutter/material.dart';

class ExpandedButton extends StatelessWidget {
  const ExpandedButton({
    Key? key,
    required this.text,
    required this.color,
    required this.backgroundColor,
    required this.borderRadius,
    this.onPress,
  }) : super(key: key);
  final String text;
  final BorderRadius borderRadius;
  final Color color;
  final Color backgroundColor;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: borderRadius)),
        backgroundColor: MaterialStatePropertyAll(backgroundColor),
      ),
      onPressed: onPress,
      child: Text(
        text,
        style: bodyLargeTitle.copyWith(color: color),
      ),
    ));
  }
}
