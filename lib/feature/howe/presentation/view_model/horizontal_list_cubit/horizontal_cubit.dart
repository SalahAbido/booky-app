import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';

import '../../../data/models/Book.dart';
import '../../../data/repos/home_repo.dart';

part 'horizontal_state.dart';

class HorizontalCubit extends Cubit<HorizontalState> {
  HorizontalCubit(this._homeRepo) : super(HorizontalInitial());
  final HomeRepo _homeRepo;

  fetchFeaturedBooks() async {
    emit(HorizontalLoading());
    var result = await _homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(HorizontalFailure(failure.errorMessage)),
      (success) => emit(HorizontalSuccess(success)),
    );
  }
}
