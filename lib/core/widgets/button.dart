import 'package:booky_app/constant.dart';
import 'package:flutter/material.dart';

class ExpandedButton extends StatelessWidget {
  const ExpandedButton({
    Key? key,
    required this.text,
    required this.color,
    required this.backgroundColor,
    required this.borderRadius,
  }) : super(key: key);
  final String text;
  final BorderRadius borderRadius;
  final Color color;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: borderRadius)),
        backgroundColor: MaterialStatePropertyAll(backgroundColor),
      ),
      child: Text(
        text,
        style: bodyLargeTitle.copyWith(color: color),
      ),
      onPressed: () {},
    ));
  }
}
