import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/Book.dart';
import '../../../data/repos/home_repo.dart';

part 'vertical_state.dart';

class VerticalCubit extends Cubit<VerticalState> {
  VerticalCubit(this.homeRepo) : super(VerticalInitial());

  final HomeRepo homeRepo;

  fetchNewestBooks() async {
    emit(VerticalLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) => emit(VerticalFailure(failure.errorMessage)),
      (success) => emit(VerticalSuccess(success)),
    );
  }
}
