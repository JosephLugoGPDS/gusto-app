import 'package:app/core/exceptions/domain_exception.dart';
import 'package:app/data/repositories/favorites_repository.dart';
import 'package:app/domain/delete_all_favorites_use_case.dart';
import 'package:app/domain/no_params.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';

import 'delete_all_favorites_usecase_test.mocks.dart';

@GenerateNiceMocks([MockSpec<FavoritesRepository>()])
void main() {
  late MockFavoritesRepository repository;
  late DeleteAllFavoritesUseCase usecase;

  setUp(() {
    repository = MockFavoritesRepository();
    usecase = DeleteAllFavoritesUseCase(repository);
  });

  test('should call deleteAll and return Right(true)', () async {
    when(repository.deleteAll()).thenAnswer((_) async => const Right(true));

    final result = await usecase(NoParams());

    expect(result, const Right<DomainException, bool>(true));
    verify(repository.deleteAll()).called(1);
  });
}
