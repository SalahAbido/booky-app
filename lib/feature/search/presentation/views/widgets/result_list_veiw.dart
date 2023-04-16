import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom _error_widget.dart';
import '../../../../../core/widgets/loading_widget.dart';
import '../../../../howe/presentation/veiws/book_detail_screen.dart';
import '../../../../howe/presentation/veiws/widgets/build_vertical_card.dart';
import '../../../../howe/presentation/view_model/vertical_list_cubit/vertical_cubit.dart';

class ResultListView extends StatelessWidget {
  const ResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerticalCubit, VerticalState>(
      builder: (context, state) {
        if (state is VerticalSuccess) {
          return Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, BookDetailScreen.routeName,
                          arguments: state.books[index]);
                    },
                    child: VerticalCard(book: state.books[index]));
              },
              itemCount: state.books.length,
            ),
          );
        } else if (state is VerticalFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
