import 'package:app/data/models/taste_list_model.dart';
import 'package:app/logic/taste_list/taste_list_cubit.dart';
import 'package:app/logic/taste_list/taste_list_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:app/domain/obtain_taste_list_use_case.dart';
import 'package:app/data/models/taste_model.dart';
import 'package:app/domain/no_params.dart';
import 'package:app/core/bloc/result_state.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/annotations.dart';

import 'taste_list_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ObtainTasteListUseCaseUseCase>()])
void main() {
  late TasteListCubit cubit;
  late MockObtainTasteListUseCaseUseCase useCase;

  setUp(() {
    useCase = MockObtainTasteListUseCaseUseCase();
    cubit = TasteListCubit(useCase);
  });

  const tasteList = [
    TasteModel(name: 'Pikachu', id: '25', url: 'https://urls_preuba')
  ];
  const data = TasteListModel(count: 1, results: tasteList);

  blocTest<TasteListCubit, TasteListState>(
    'emits loading and data states correctly',
    build: () {
      when(useCase.call('0')).thenAnswer((_) async => const Right(data));
      return TasteListCubit(useCase);
    },
    act: (cubit) => cubit.obtainUpdatedTasteList(),
    expect: () => const [
      TasteListState(
        tasteList: [],
        offset: 0,
        hasMoreTasteToLoad: true,
        resultState: Initial(),
        imageUrl: '',
        isLoading: true,
        count: null,
      ),
      TasteListState(
        tasteList: [],
        offset: 0,
        hasMoreTasteToLoad: true,
        resultState: Loading(),
        imageUrl: '',
        isLoading: true,
        count: null,
      ),
      TasteListState(
        tasteList: tasteList,
        offset: 10,
        hasMoreTasteToLoad: false,
        resultState: Data(data: tasteList),
        imageUrl: '',
        isLoading: false,
        count: 1,
      ),
    ],
  );
}
