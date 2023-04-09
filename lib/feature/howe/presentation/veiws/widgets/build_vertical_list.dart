import 'package:flutter/material.dart';

import 'build_vertical_card.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // clipBehavior: Clip.none,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => const VerticalCard(),
      itemCount: 5,
    );
  }
}
