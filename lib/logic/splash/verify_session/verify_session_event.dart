import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_session_event.freezed.dart';

@freezed
class VerifySessionEvent with _$VerifySessionEvent {
  const factory VerifySessionEvent.checkSession() = CheckSession;
}
