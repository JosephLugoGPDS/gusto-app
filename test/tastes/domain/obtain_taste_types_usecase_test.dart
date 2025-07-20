import 'package:app/core/exceptions/domain_exception.dart';
import 'package:app/data/models/dropdown_model.dart';
import 'package:app/data/repositories/tastes_repository.dart';
import 'package:app/domain/no_params.dart';
import 'package:app/domain/obtain_taste_type_list_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'obtain_taste_types_usecase_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TastesRepository>()])
void main() {
  late MockTastesRepository repository;
  late ObtainTasteTypesUseCaseUseCase usecase;

  setUp(() {
    repository = MockTastesRepository();
    usecase = ObtainTasteTypesUseCaseUseCase(repository);
  });

  final response = Right<DomainException, List<DropdownModel>>([]);

  test('should fetch taste types from repository', () async {
    when(repository.fetchTasteTypes()).thenAnswer((_) async => response);

    final result = await usecase.call(NoParams());

    expect(result, response);
    verify(repository.fetchTasteTypes()).called(1);
  });
}
