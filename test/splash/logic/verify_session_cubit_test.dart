import 'package:app/logic/splash/verify_session/verify_session_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:app/core/bloc/result_state.dart';

void main() {
  blocTest<VerifySessionCubit, ResultState<bool>>(
    'emits [loading, data] on startup',
    build: () => VerifySessionCubit(),
    wait: const Duration(milliseconds: 1100),
    expect: () => [
      const Loading<bool>(),
      const Data<bool>(data: true),
    ],
  );
}
