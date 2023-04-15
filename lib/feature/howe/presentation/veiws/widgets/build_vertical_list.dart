import 'package:booky_app/feature/howe/presentation/view_model/vertical_list_cubit/vertical_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom _error_widget.dart';
import '../../../../../core/widgets/loading_widget.dart';
import 'build_vertical_card.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerticalCubit, VerticalState>(
      builder: (context, state) {
        if (state is VerticalSuccess) {
          return ListView.builder(
            // clipBehavior: Clip.none,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              // Map<String ,String> data ={
              //   'image':state.books[index].volumeInfo!.imageLinks!.thumbnail!,
              // };
              return VerticalCard(book: state.books[index]);
            },
            itemCount: state.books.length,
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
