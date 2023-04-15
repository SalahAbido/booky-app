import 'package:booky_app/core/errors/failures.dart';
import 'package:booky_app/feature/howe/data/models/Book.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Book>>> fetchNewestBooks();

  Future<Either<Failure, List<Book>>> fetchFeaturedBooks();

  Future<Either<Failure, List<Book>>> fetchLikedBooks();
}
