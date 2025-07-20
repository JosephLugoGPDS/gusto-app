import 'package:app/core/bloc/result_state.dart';
import 'package:app/logic/delete_favorite/delete_favorite_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app/domain/delete_favorite_by_id_use_case.dart';
import 'package:mockito/annotations.dart';
import 'package:dartz/dartz.dart';

import 'delete_favorite_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<DeleteFavoriteByIdUseCase>()])
void main() {
  late DeleteFavoriteCubit cubit;
  late MockDeleteFavoriteByIdUseCase useCase;

  setUp(() {
    useCase = MockDeleteFavoriteByIdUseCase();
    cubit = DeleteFavoriteCubit(useCase);
  });

  blocTest<DeleteFavoriteCubit, ResultState<bool>>(
    'deleteFavoriteById emits loading and data',
    build: () {
      when(useCase.call('1')).thenAnswer((_) async => const Right(true));
      return cubit;
    },
    act: (cubit) => cubit.deleteFavoriteById('1'),
    expect: () => [
      const Loading<bool>(),
      const Data<bool>(data: true),
    ],
  );
}
