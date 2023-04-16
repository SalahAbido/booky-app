import 'package:booky_app/feature/howe/data/models/Book.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../constant.dart';
import '../../../../../core/widgets/button.dart';
import 'build _review_bar.dart';
import 'build_horizontal_card.dart';

class BookDetailInfoSection extends StatelessWidget {
  const BookDetailInfoSection({Key? key, required this.book}) : super(key: key);
  final Book book;

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
          child: HorizontalCard(
              imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? ' '),
        ),
        Text(
          book.volumeInfo?.title ?? 'unknown',
          style: bodyLargeTitle.copyWith(fontSize: 30.0),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            'Salah Abido',
            style: bodyMediumTitle.copyWith(
                fontSize: 18, fontStyle: FontStyle.italic),
          ),
        ),
        const ReviewBar(count: 300, rating: 3),
        const SizedBox(
          height: 50.0,
        ),
        Row(
          children: [
            ExpandedButton(
              onPress: () {},
              text: 'Free',
              color: Colors.black,
              backgroundColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              ),
            ),
            ExpandedButton(
              onPress: () async {
                Uri  url=Uri.parse('https://github.com/SalahAbido');
                if (await canLaunchUrl(url)) {
                 await launchUrl(url);
                }
              },
              text: 'Pre View',
              color: Colors.white,
              backgroundColor: Colors.orange,
              borderRadius: const BorderRadius.only(
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
