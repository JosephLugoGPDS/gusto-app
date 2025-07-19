import 'package:app/core/exceptions/data_exception.dart';
import 'package:app/core/exceptions/domain_exception.dart';

extension DataExceptionExtension on DataException {
  DomainException get toDomainException => DataException.toDomainError(this);
  DomainException get toDomain => DomainException(exceptionType: this);
  String get toPresentation => DataException.toMessage(this);
}
