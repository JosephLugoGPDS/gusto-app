import 'package:app/core/exceptions/domain_exception.dart';
import 'package:app/data/models/taste_list_model.dart';
import 'package:app/data/models/taste_model.dart';
import 'package:app/data/repositories/tastes_repository.dart';
import 'package:app/domain/obtain_taste_list_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'obtain_taste_list_usecase_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TastesRepository>()])
void main() {
  late MockTastesRepository repository;
  late ObtainTasteListUseCaseUseCase usecase;

  setUp(() {
    repository = MockTastesRepository();
    usecase = ObtainTasteListUseCaseUseCase(repository);
  });

  const offset = '0';
  const pokemon = TasteModel(name: 'pikachu', url: 'https://picachu.png');
  const model = TasteListModel(
    count: 10,
    results: [pokemon],
  );
  const response = Right<DomainException, TasteListModel>(model);

  test('should fetch taste list from repository', () async {
    when(repository.fetchTasteList(offset)).thenAnswer((_) async => response);

    final result = await usecase.call(offset);

    expect(result, response);
    verify(repository.fetchTasteList(offset)).called(1);
  });
}
