import 'package:booky_app/constant.dart';
import 'package:booky_app/core/widgets/button.dart';
import 'package:booky_app/feature/howe/presentation/veiws/widgets/book_detail_appbar.dart';
import 'package:booky_app/feature/howe/presentation/veiws/widgets/book_detail_like_section.dart';
import 'package:booky_app/feature/howe/presentation/veiws/widgets/book_detail_section_info.dart';
import 'package:booky_app/feature/howe/presentation/veiws/widgets/build%20_review_bar.dart';
import 'package:flutter/material.dart';

import 'build_horizontal_card.dart';

class BookDetailScreenBody extends StatelessWidget {
  const BookDetailScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: const [
                BookDetailAppBar(),
                BookDetailInfoSection(),
                Expanded(
                    child: SizedBox(
                  height: 30.0,
                )),
                BookDetailLikeSection(),
                Expanded(
                    child: SizedBox(
                  height: 30.0,
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
