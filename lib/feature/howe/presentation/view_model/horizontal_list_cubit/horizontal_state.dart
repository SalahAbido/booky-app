part of 'horizontal_cubit.dart';

@immutable
abstract class HorizontalState {}

class HorizontalInitial extends HorizontalState {}

class HorizontalLoading extends HorizontalState {}

class HorizontalSuccess extends HorizontalState {
  final List<Book> books;

  HorizontalSuccess(this.books);
}

class HorizontalFailure extends HorizontalState {
  final String errorMessage;

  HorizontalFailure(this.errorMessage);
}
