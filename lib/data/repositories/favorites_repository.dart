import 'package:app/core/exceptions/data_exception.dart';
import 'package:app/core/exceptions/domain_exception.dart';
import 'package:app/data/models/favorite_preference_model.dart';
import 'package:app/data/sources/local/favorites_preferences_source.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class FavoritesRepository {
  Future<Either<DomainException, bool>> create(
      List<FavoritePreferenceModel> list);
  Future<Either<DomainException, bool>> createByFavorite(
      FavoritePreferenceModel favorite);
  Future<Either<DomainException, List<FavoritePreferenceModel>>> fetchList();
  Future<Either<DomainException, bool>> deleteAll();
  Future<Either<DomainException, bool>> deleteById(String id);
}

@Injectable(as: FavoritesRepository)
class FavoritesRepositoryImpl extends FavoritesRepository {
  final FavoritesPreferencesSource _favoritesPreferencesSource;

  FavoritesRepositoryImpl(this._favoritesPreferencesSource);

  @override
  Future<Either<DomainException, bool>> create(
      List<FavoritePreferenceModel> list) async {
    try {
      final result = await _favoritesPreferencesSource.saveFavorites(list);
      return Right(result);
    } catch (e, _) {
      return Left(DataException.toDomainError(const UnexpectedError()));
    }
  }

  @override
  Future<Either<DomainException, List<FavoritePreferenceModel>>>
      fetchList() async {
    try {
      final list = await _favoritesPreferencesSource.getFavorites();
      return Right(list ?? []);
    } catch (e, _) {
      return Left(DataException.toDomainError(const UnexpectedError()));
    }
  }

  @override
  Future<Either<DomainException, bool>> deleteAll() async {
    try {
      final result = await _favoritesPreferencesSource.deleteFavorites();
      return Right(result);
    } catch (e, _) {
      return Left(DataException.toDomainError(const UnexpectedError()));
    }
  }

  @override
  Future<Either<DomainException, bool>> deleteById(String id) async {
    try {
      final list = await _favoritesPreferencesSource.getFavorites();
      if (list == null) return const Right(false);

      final filtered = list.where((e) => e.id != id).toList();
      final result = await _favoritesPreferencesSource.saveFavorites(filtered);
      return Right(result);
    } catch (e, _) {
      return Left(DataException.toDomainError(const UnexpectedError()));
    }
  }

  @override
  Future<Either<DomainException, bool>> createByFavorite(
      FavoritePreferenceModel favorite) async {
    try {
      final isSuccess =
          await _favoritesPreferencesSource.saveFavoriteById(favorite);
      return Right(isSuccess);
    } catch (e, _) {
      return Left(DataException.toDomainError(const UnexpectedError()));
    }
  }
}
