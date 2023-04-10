import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../core/widgets/button.dart';
import 'book_detail_appbar.dart';
import 'build _review_bar.dart';
import 'build_horizontal_card.dart';

class BookDetailInfoSection extends StatelessWidget {
  const BookDetailInfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: MedQur.getWidth(context) * 0.17),
          child: const HorizontalCard(),
        ),
        Text(
          'The Jungle book ',
          style: bodyLargeTitle.copyWith(fontSize: 30.0),
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            'Salah Abido',
            style: bodyMediumTitle.copyWith(
                fontSize: 18, fontStyle: FontStyle.italic),
          ),
        ),
        const ReviewBar(),
        const SizedBox(
          height: 50.0,
        ),
        Row(
          children: const [
            ExpandedButton(
              text: '19.99',
              color: Colors.black,
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              ),
            ),
            ExpandedButton(
              text: '19.99',
              color: Colors.white,
              backgroundColor: Colors.orange,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
