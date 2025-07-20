import 'package:app/data/models/taste_model.dart';
import 'package:app/logic/taste_full/taste_full_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app/domain/obtain_taste_full_use_case.dart';
import 'package:app/data/models/taste_detail_model.dart';
import 'package:app/core/bloc/result_state.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/annotations.dart';

import 'taste_full_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ObtainTasteFullUseCaseUseCase>()])
void main() {
  late TasteFullCubit cubit;
  late MockObtainTasteFullUseCaseUseCase useCase;

  setUp(() {
    useCase = MockObtainTasteFullUseCaseUseCase();
    cubit = TasteFullCubit(useCase);
  });

  const namedApiResource =
      NamedApiResource(name: 'api', url: 'https://url_prueba');
  const sprites = Sprites(
      frontDefault: 'url_to_image',
      backDefault: '',
      backShiny: '',
      frontShiny: '');
  const type = TypeModel(slot: 0, type: namedApiResource);

  const taste = TasteDetailModel(
    id: 0,
    name: 'Pikachu',
    isBattleOnly: false,
    isDefault: true,
    isMega: false,
    sprites: sprites,
    types: [type],
    pokemon: namedApiResource,
    versionGroup: namedApiResource,
  );

  blocTest<TasteFullCubit, ResultState<TasteDetailModel>>(
    'emits [loading, data] on success',
    build: () {
      when(useCase.call('123')).thenAnswer((_) async => Right(taste));
      return cubit;
    },
    act: (cubit) => cubit.obtainTasteFullDetail('123'),
    expect: () => [
      const Loading<TasteDetailModel>(),
      const Data<TasteDetailModel>(data: taste),
    ],
  );
}
