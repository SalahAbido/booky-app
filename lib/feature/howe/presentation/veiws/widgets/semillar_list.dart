import 'package:booky_app/core/widgets/custom%20_error_widget.dart';
import 'package:booky_app/core/widgets/loading_widget.dart';
import 'package:booky_app/feature/howe/presentation/view_model/like_list_cubit/like__cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constant.dart';
import 'build_horizontal_card.dart';

class SimilarList extends StatelessWidget {
  const SimilarList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LikeCubit, LikeState>(
      builder: (context, state) {
        if (state is LikeSuccess) {
          return SizedBox(
            height: MedQur.getHeight(context) * 0.18,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  InkWell(
                    borderRadius: BorderRadius.circular(25.0),
                    onTap: () {},
                    child:  HorizontalCard(imageUrl: state.books[index].volumeInfo?.imageLinks?.thumbnail?? ' '),
                  ),
              itemCount: 5,
            ),
          );
        }
        else if(state is LikeFailure){
          return  CustomErrorWidget(errorMessage: state.errorMessage);
        }
        else{
          return const LoadingWidget();
        }
      },
    );
  }
}
