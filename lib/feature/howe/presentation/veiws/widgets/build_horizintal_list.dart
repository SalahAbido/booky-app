import 'package:booky_app/core/widgets/custom%20_error_widget.dart';
import 'package:booky_app/core/widgets/loading_widget.dart';
import 'package:booky_app/feature/howe/data/models/Book.dart';
import 'package:booky_app/feature/howe/presentation/veiws/widgets/build_horizontal_card.dart';
import 'package:booky_app/feature/howe/presentation/view_model/horizontal_list_cubit/horizontal_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constant.dart';
import '../book_detail_screen.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HorizontalCubit, HorizontalState>(
      builder: (context, state) {
        if (state is HorizontalSuccess) {
          return SizedBox(
            height: MedQur.getHeight(context) * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: InkWell(
                    borderRadius: BorderRadius.circular(16.0),
                    onTap: () {
                      Navigator.pushNamed(context, BookDetailScreen.routeName,arguments: state.books[index]);
                    },
                    child: HorizontalCard(
                      imageUrl:
                          state.books[index].volumeInfo?.imageLinks?.thumbnail,
                    )),
              ),
              itemCount: state.books.length,
            ),
          );
        } else if (state is HorizontalFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
