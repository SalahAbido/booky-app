import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constant.dart';
class ReviewBar extends StatelessWidget {
  const ReviewBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amberAccent,
        ),
        const SizedBox(
          width: 5.0,
        ),
        Text(
          '4.8',
          textAlign: TextAlign.start,
          style: bodyMediumTitle,
        ),
        Text(
          '(2332)',
          textAlign: TextAlign.start,
          style: bodyMediumTitle.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
