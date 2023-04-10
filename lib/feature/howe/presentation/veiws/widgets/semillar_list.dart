import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import 'build_horizontal_card.dart';

class SimilarList extends StatelessWidget {
  const SimilarList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MedQur.getHeight(context) * 0.18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          borderRadius: BorderRadius.circular(25.0),
          onTap: () {},
          child: const HorizontalCard(),
        ),
        itemCount: 5,
      ),
    );
  }
}
