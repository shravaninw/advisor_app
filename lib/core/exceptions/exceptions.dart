import '../../model/api_error.dart';

abstract class AppException implements Exception {}

class APIException extends AppException {
  APIException({
    this.apiError,
    this.error,
    this.stackTrace,
  });

  final ApiError? apiError;
  final Object? error;
  final StackTrace? stackTrace;

  String get message =>
      apiError?.error ?? error?.toString() ?? 'Something went wrong';
}

class GenericException extends AppException {}
