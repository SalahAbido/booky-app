import 'package:booky_app/core/errors/failures.dart';
import 'package:booky_app/core/utils/api_service.dart';
import 'package:booky_app/feature/howe/data/models/Book.dart';
import 'package:booky_app/feature/howe/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      List<Book> books = [];
      for (var item in data['items']) {
        books.add(Book.fromJson(item));
      }
      return right(books);
    } catch (error) {
      if (error is DioError) {
        return left(ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(error.toString())); // TODO
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
          'volumes?Filtering=free-ebooks&q=science');
      List<Book> books = [];
      for (var item in data['items']) {
        books.add(Book.fromJson(item));
      }
      return right(books);
    } catch (error) {
      if (error is DioError) {
        return left(ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(error.toString())); // TODO
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchLikedBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
          'volumes?Filtering=free-ebooks&q=math');
      List<Book> books = [];
      for (var item in data['items']) {
        books.add(Book.fromJson(item));
      }
      return right(books);
    } catch (error) {
      if (error is DioError) {
        return left(ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(error.toString())); // TODO
    }
  }
}
