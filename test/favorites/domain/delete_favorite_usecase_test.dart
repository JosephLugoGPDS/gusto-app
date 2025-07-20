import 'package:app/core/exceptions/domain_exception.dart';
import 'package:app/data/models/favorite_preference_model.dart';
import 'package:app/data/repositories/favorites_repository.dart';
import 'package:app/domain/delete_favorite_by_id_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';

import 'delete_favorite_usecase_test.mocks.dart';

@GenerateNiceMocks([MockSpec<FavoritesRepository>()])
void main() {
  late MockFavoritesRepository repository;
  late DeleteFavoriteByIdUseCase usecase;

  setUp(() {
    repository = MockFavoritesRepository();
    usecase = DeleteFavoriteByIdUseCase(repository);
  });

  test('should call deleteByFavorite and return Right(true)', () async {
    const model = FavoritePreferenceModel(
        id: '1', imageUrl: '', description: '', name: '');
    when(repository.deleteById(model.id))
        .thenAnswer((_) async => const Right(true));

    final result = await usecase(model.id);

    expect(result, const Right<DomainException, bool>(true));
    verify(repository.deleteById(model.id)).called(1);
  });
}
