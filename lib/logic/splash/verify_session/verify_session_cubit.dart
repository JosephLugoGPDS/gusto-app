import 'package:app/core/bloc/result_state.dart';
import 'package:app/logic/splash/verify_session/verify_session_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class VerifySessionCubit extends Bloc<VerifySessionEvent, ResultState<bool>> {
  VerifySessionCubit() : super(const Initial()) {
    on<CheckSession>(_checkSession);

    add(const CheckSession());
  }

  void _checkSession(
      CheckSession event, Emitter<ResultState<bool>> emitter) async {
    try {
      emitter(const Loading());
      // fake verify session
      await Future.delayed(const Duration(milliseconds: 1000));
      var hasSession = true;

      emitter(Data(data: hasSession));
    } catch (e) {
      emitter(Error(error: 'Ocurrió un error al verificar la sesión: $e'));
    }
  }
}
