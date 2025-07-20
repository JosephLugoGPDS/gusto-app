import 'package:app/core/exceptions/domain_exception.dart';
import 'package:app/data/models/taste_detail_model.dart';
import 'package:app/data/repositories/tastes_repository.dart';
import 'package:app/domain/obtain_taste_full_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'obtain_taste_full_usecase_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TastesRepository>()])
void main() {
  late MockTastesRepository repository;
  late ObtainTasteFullUseCaseUseCase usecase;

  setUp(() {
    repository = MockTastesRepository();
    usecase = ObtainTasteFullUseCaseUseCase(repository);
  });

  const id = '1';
  const resource1 = NamedApiResource(
      name: 'pikachu', url: 'https://pokeapi.co/api/v2/pokemon/25/');
  const resource2 = NamedApiResource(
    name: 'electric',
    url: 'https://pokeapi.co/api/v2/type/13/',
  );
  const detail = TasteDetailModel(
    name: 'Pikachu',
    isBattleOnly: false,
    isDefault: true,
    isMega: false,
    sprites: Sprites(
      frontDefault: 'https://img.pokemondb.net/sprites/home/normal/pikachu.png',
      frontShiny: 'https://img.pokemondb.net/sprites/home/shiny/pikachu.png',
      backDefault: 'https://img.pokemondb.net/sprites/home/shiny/pikachu.png',
      backShiny: 'https://img.pokemondb.net/sprites/home/shiny/pikachu.png',
    ),
    types: [
      TypeModel(
        type: resource2,
        slot: 0,
      ),
    ],
    pokemon: resource1,
    versionGroup: resource1,
  );
  const response = Right<DomainException, TasteDetailModel>(detail);

  test('should fetch taste detail from repository', () async {
    when(repository.fetchTasteDetail(id)).thenAnswer((_) async => response);

    final result = await usecase.call(id);

    expect(result, response);
    verify(repository.fetchTasteDetail(id)).called(1);
  });
}
