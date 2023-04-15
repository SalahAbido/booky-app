part of 'vertical_cubit.dart';

@immutable
abstract class VerticalState {}

class VerticalInitial extends VerticalState {}

class VerticalLoading extends VerticalState {}

class VerticalSuccess extends VerticalState {
  final List<Book> books;

  VerticalSuccess(this.books);
}

class VerticalFailure extends VerticalState {
  final String errorMessage ;

  VerticalFailure(this.errorMessage);
}
