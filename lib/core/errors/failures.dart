import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure(' connection time out with server api');
      case DioErrorType.sendTimeout:
        return ServerFailure(' Sending time out with server api');
      case DioErrorType.receiveTimeout:
        return ServerFailure(' Receive time out with server api');
      case DioErrorType.badCertificate:
        return ServerFailure(' Bad Certificate with server api');
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure(' Request canceled  with server api');
      case DioErrorType.connectionError:
        return ServerFailure(' There are a problem in internet connection');
      case DioErrorType.unknown:
        return ServerFailure('There are unknown Error');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic data) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(data['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('your request is not found');
    } else if (statusCode == 500) {
      return ServerFailure('internal server error ,try again');
    } else {
      return ServerFailure('oops, there are unknown error');
    }
  }
}
