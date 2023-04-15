part of 'like__cubit.dart';

@immutable
abstract class LikeState {}

class LikeInitial extends LikeState {}

class LikeSuccess extends LikeState {
  final List<Book> books;

  LikeSuccess({required this.books});
}

class LikeFailure extends LikeState {
  final String errorMessage;

  LikeFailure({required this.errorMessage});
}

class LikeLoading extends LikeState {}
