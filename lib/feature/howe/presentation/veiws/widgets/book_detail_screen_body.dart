
import 'package:booky_app/feature/howe/presentation/veiws/widgets/book_detail_appbar.dart';
import 'package:booky_app/feature/howe/presentation/veiws/widgets/book_detail_like_section.dart';
import 'package:booky_app/feature/howe/presentation/veiws/widgets/book_detail_section_info.dart';
import 'package:booky_app/feature/howe/presentation/view_model/like_list_cubit/like__cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/Book.dart';


class BookDetailScreenBody extends StatefulWidget {
  const BookDetailScreenBody({Key? key, required this.book}) : super(key: key);
final Book book;

  @override
  State<BookDetailScreenBody> createState() => _BookDetailScreenBodyState();
}

class _BookDetailScreenBodyState extends State<BookDetailScreenBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<LikeCubit>(context).fetchLikedBooks(category: 'math ');
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children:  [
                const BookDetailAppBar(),
                BookDetailInfoSection(book: widget.book),
                const  Expanded(
                    child: SizedBox(
                  height: 30.0,
                )),
                const BookDetailLikeSection(),
                const Expanded(
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
