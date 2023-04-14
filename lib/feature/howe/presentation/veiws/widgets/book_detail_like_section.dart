import 'package:booky_app/feature/howe/presentation/veiws/widgets/semillar_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constant.dart';

class BookDetailLikeSection extends StatelessWidget {
  const BookDetailLikeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'you can also like',
          style: bodyLargeTitle,
        ),
        const SizedBox(
          height: 30.0,
        ),
        const SimilarList(),
      ],
    );
  }
}
