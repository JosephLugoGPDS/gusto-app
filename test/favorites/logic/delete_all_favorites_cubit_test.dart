import 'package:app/domain/no_params.dart';
import 'package:app/logic/delete_all_favorites/delete_all_favorites_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:app/domain/delete_all_favorites_use_case.dart';
import 'package:app/core/bloc/result_state.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/annotations.dart';

import 'delete_all_favorites_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<DeleteAllFavoritesUseCase>()])
void main() {
  late DeleteAllFavoritesCubit cubit;
  late MockDeleteAllFavoritesUseCase useCase;

  setUp(() {
    useCase = MockDeleteAllFavoritesUseCase();
    cubit = DeleteAllFavoritesCubit(useCase);
  });

  blocTest<DeleteAllFavoritesCubit, ResultState<bool>>(
    'emits [loading, data]',
    build: () {
      when(useCase.call(NoParams())).thenAnswer((_) async => const Right(true));
      return cubit;
    },
    act: (cubit) => cubit.deleteAllFavorites(),
    expect: () => [
      const Loading<bool>(),
      const Data<bool>(data: true),
    ],
  );
}
