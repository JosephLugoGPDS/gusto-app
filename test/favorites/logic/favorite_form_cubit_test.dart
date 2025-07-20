import 'package:app/core/bloc/result_state.dart';
import 'package:app/logic/favorite_form/favorite_form_cubit.dart';
import 'package:app/logic/favorite_form/favorite_form_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app/data/models/favorite_preference_model.dart';
import 'package:app/domain/create_favorite_use_case.dart';
import 'package:mockito/annotations.dart';
import 'package:dartz/dartz.dart';

import 'favorite_form_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<CreateFavoriteUseCase>()])
void main() {
  late FavoriteFormCubit cubit;
  late MockCreateFavoriteUseCase useCase;

  setUp(() {
    useCase = MockCreateFavoriteUseCase();
    cubit = FavoriteFormCubit(useCase);
  });

  const model =
      FavoritePreferenceModel(id: '1', imageUrl: '', description: '', name: '');

  blocTest<FavoriteFormCubit, FavoriteFormState>(
    'createFavorite emits loading and data',
    build: () {
      when(useCase.call(any)).thenAnswer((_) async => const Right(true));
      cubit.loadFavorite('1', 'image.jpg', 'Nombre');
      cubit.updateDescription('Descripción');
      return cubit;
    },
    act: (cubit) => cubit.createFavorite(),
    expect: () => [
      isA<FavoriteFormState>()
          .having((s) => s.resultState, 'loading', isA<Loading>()),
      isA<FavoriteFormState>()
          .having((s) => s.resultState, 'data', isA<Data>()),
    ],
  );
}
