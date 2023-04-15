import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/Book.dart';
import '../../../data/repos/home_repo.dart';

part 'like__state.dart';

class LikeCubit extends Cubit<LikeState> {
  LikeCubit(this.homeRepo) : super(LikeInitial());
  final HomeRepo homeRepo;

  fetchLikedBooks() async {
    emit(LikeLoading());
    var result = await homeRepo.fetchLikedBooks();
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
