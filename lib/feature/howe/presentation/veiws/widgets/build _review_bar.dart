import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constant.dart';

class ReviewBar extends StatelessWidget {
  const ReviewBar({
    Key? key,
    required this.rating,
    required this.count,
  }) : super(key: key);
  final int rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amberAccent,
        ),
        const SizedBox(
          width: 5.0,
        ),
        Text(
          rating.toString(),
          textAlign: TextAlign.start,
          style: bodyMediumTitle,
        ),
        Text(
          '($count)',
          textAlign: TextAlign.start,
          style: bodyMediumTitle.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
