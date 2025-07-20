import 'package:app/core/exceptions/domain_exception.dart';
import 'package:app/data/models/favorite_preference_model.dart';
import 'package:app/data/repositories/favorites_repository.dart';
import 'package:app/domain/create_favorite_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'create_favorite_use_case_test.mocks.dart';

@GenerateNiceMocks([MockSpec<FavoritesRepository>()])
void main() {
  late MockFavoritesRepository repository;
  late CreateFavoriteUseCase usecase;

  setUp(() {
    repository = MockFavoritesRepository();
    usecase = CreateFavoriteUseCase(repository);
  });

  const model =
      FavoritePreferenceModel(id: '1', imageUrl: '', description: '', name: '');
  const response = Right<DomainException, bool>(true);

  test('should call repository.createByFavorite and return result', () async {
    when(repository.createByFavorite(model)).thenAnswer((_) async => response);

    final result = await usecase.call(model);

    verify(repository.createByFavorite(model)).called(1);
    expect(result, response);
  });
}
