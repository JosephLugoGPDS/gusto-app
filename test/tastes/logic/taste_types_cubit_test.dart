import 'package:app/data/models/dropdown_model.dart';
import 'package:app/domain/obtain_taste_type_list_use_case.dart';
import 'package:app/logic/taste_types/taste_types_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:app/domain/no_params.dart';
import 'package:app/core/bloc/result_state.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/annotations.dart';

import 'taste_types_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ObtainTasteTypesUseCaseUseCase>()])
void main() {
  late TasteTypesCubit cubit;
  late MockObtainTasteTypesUseCaseUseCase useCase;

  const types = [
    DropdownModel('Fire', 'Fire'),
    DropdownModel('Water', 'Water'),
  ];

  setUp(() {
    useCase = MockObtainTasteTypesUseCaseUseCase();
    when(useCase.call(NoParams())).thenAnswer((_) async => const Right(types));
    cubit = TasteTypesCubit(useCase);
  });

  blocTest<TasteTypesCubit, ResultState<List<DropdownModel>>>(
    'emits [loading, data]',
    build: () => cubit,
    act: (cubit) => cubit.obtainTasteTypes(),
    expect: () => [
      const Loading<List<DropdownModel>>(),
      const Data<List<DropdownModel>>(data: types)
    ],
  );
}
