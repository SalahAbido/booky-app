import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/Book.dart';
import '../../../data/repos/home_repo.dart';

part 'like__state.dart';

class LikeCubit extends Cubit<LikeState> {
  LikeCubit(this.homeRepo) : super(LikeInitial());
  final HomeRepo homeRepo;

  fetchLikedBooks({
    required dynamic category,
  }) async {
    emit(LikeLoading());
    var result = await homeRepo.fetchLikedBooks(category: category);
    result.fold(
      (failure) => emit(
        LikeFailure(errorMessage: failure.errorMessage),
      ),
      (success) => emit(
        LikeSuccess(books: success),
      ),
    );
  }
}
