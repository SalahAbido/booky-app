import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    Key? key,
    required this.slideAnimation,
  }) : super(key: key);
  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideAnimation,
      builder: (BuildContext context, Widget? child) {
        return SlideTransition(
            position: slideAnimation,
            child: const Text(
              textAlign: TextAlign.center,
              'Read Free Books',
              // style: TextStyle(color: Colors.white),
            ));
      },
    );
  }
}
