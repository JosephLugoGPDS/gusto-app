import 'package:app/core/exceptions/domain_exception.dart';
import 'package:app/core/resources/strings.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_exception.freezed.dart';

@freezed
class DataException with _$DataException {
  const factory DataException.databaseException(String message) =
      DatabaseException;

  const factory DataException.responseError(String message, int codeError) =
      ResponseError;
  const factory DataException.unexpectedError() = UnexpectedError;

  static String toMessage(DataException exception) {
    return exception.when(
      responseError: (message, code) {
        return message;
      },
      databaseException: (String message) {
        return AppStrings.errorMessages.databaseError;
      },
      unexpectedError: () => AppStrings.errorMessages.unexpectedError,
    );
  }

  static int toCode(DataException exception) {
    return exception.when(
      databaseException: (String message) {
        return 0;
      },
      responseError: (message, code) {
        return code;
      },
      unexpectedError: () => 500,
    );
  }

  static DataException fromDioException(DioException error) {
    switch (error.type) {
      //TODO: update all Dio response
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.badResponse:
        var statusCode = error.response?.statusCode ?? 101;
        var message = 'Ha ocurrido un error. Por favor reintente';
        if (error.response != null &&
            error.response!.data is Map &&
            error.response!.data.containsKey('message')) {
          message = error.response?.data['message'] ?? '';
        }
        if (error.response != null &&
            error.response!.data is Map &&
            error.response!.data.containsKey('messages')) {
          var errorList = List<String>.from(error.response!.data['messages']);
          message = errorList.join('\n');
        }
        if (error.response != null &&
            error.response!.data is Map &&
            error.response!.data.containsKey('detail')) {
          message = error.response?.data['detail'] ?? '';
        }
        return ResponseError(message, statusCode);

      default:
        return const ResponseError('Error inesperado', 100);
    }
  }

  static DomainException toDomainError(DataException exception) {
    return DomainException(
      exceptionType: exception,
      message: toMessage(exception),
      code: toCode(exception),
    );
  }
}
