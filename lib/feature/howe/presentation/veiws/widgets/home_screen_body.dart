import 'package:booky_app/constant.dart';
import 'package:booky_app/feature/howe/presentation/veiws/widgets/build_horizintal_list.dart';
import 'package:booky_app/feature/howe/presentation/veiws/widgets/build_vertical_list.dart';
import 'package:flutter/material.dart';

import 'build_app_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BuildHomeAppBar(),
            const HorizontalList(),
            SizedBox(
              height: MedQur.getHeight(context) * 0.02,
            ),
            Text(
              'Best Seller ',
              style: bodyLargeTitle,
            ),
            SizedBox(
              height: MedQur.getHeight(context) * 0.02,
            ),
            const VerticalList()
          ],
        ),
      ),
    );
  }
}
