import 'package:app/core/exceptions/domain_exception.dart';
import 'package:app/data/models/favorite_preference_model.dart';
import 'package:app/data/repositories/favorites_repository.dart';
import 'package:app/domain/no_params.dart';
import 'package:app/domain/obtain_favorites_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';

import 'obtain_favorites_usecase_test.mocks.dart';

@GenerateNiceMocks([MockSpec<FavoritesRepository>()])
void main() {
  late MockFavoritesRepository repository;
  late ObtainFavoritesUseCase usecase;

  setUp(() {
    repository = MockFavoritesRepository();
    usecase = ObtainFavoritesUseCase(repository);
  });

  test('should call getFavorites and return list of favorites', () async {
    const model1 = FavoritePreferenceModel(
        id: '1', imageUrl: '', description: '', name: '');
    const model2 = FavoritePreferenceModel(
        id: '2', imageUrl: '', description: '', name: '');
    final favorites = [
      model1,
      model2,
    ];

    when(repository.fetchList()).thenAnswer((_) async => Right(favorites));

    final result = await usecase(NoParams());

    expect(result,
        Right<DomainException, List<FavoritePreferenceModel>>(favorites));
    verify(repository.fetchList()).called(1);
  });
}
