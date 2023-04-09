import 'package:booky_app/feature/howe/presentation/veiws/widgets/build_horizontal_card.dart';
import 'package:flutter/material.dart';

import '../../../../../constant.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: MedQur.getHeight(context)*0.95,
      height: MedQur.getHeight(context)*0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const HorizontalCard(),
        itemCount: 3,
      ),
    );
  }
}
