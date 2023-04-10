import 'package:flutter/material.dart';

import '../../../../howe/presentation/veiws/widgets/build_vertical_card.dart';

class ResultListView extends StatelessWidget {
  const ResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(

        // clipBehavior: Clip.none,
        // shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => const VerticalCard(),
        itemCount: 5,
      ),
    );
  }
}
