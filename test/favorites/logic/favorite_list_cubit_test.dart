import 'package:app/core/bloc/result_state.dart';
import 'package:app/logic/favorite_list/favorite_list_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:app/data/models/favorite_preference_model.dart';
import 'package:app/domain/obtain_favorites_use_case.dart';
import 'package:app/domain/no_params.dart';
import 'package:mockito/annotations.dart';
import 'package:dartz/dartz.dart';

import 'favorite_list_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ObtainFavoritesUseCase>()])
void main() {
  late FavoriteListCubit cubit;
  late MockObtainFavoritesUseCase useCase;

  setUp(() {
    useCase = MockObtainFavoritesUseCase();
    cubit = FavoriteListCubit(useCase);
  });

  const favorites = [
    FavoritePreferenceModel(id: '1', imageUrl: '', description: '', name: '')
  ];

  blocTest<FavoriteListCubit, ResultState<List<FavoritePreferenceModel>>>(
    'emits [loading, data]',
    build: () {
      when(useCase.call(NoParams()))
          .thenAnswer((_) async => const Right(favorites));
      return cubit;
    },
    act: (cubit) => cubit.obtainFavoriteList(),
    expect: () => [
      const Loading<List<FavoritePreferenceModel>>(),
      const Data<List<FavoritePreferenceModel>>(data: favorites),
    ],
  );
}
