import 'package:app/core/exceptions/domain_exception.dart';
import 'package:app/data/models/favorite_preference_model.dart';
import 'package:app/data/repositories/favorites_repository.dart';
import 'package:app/domain/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateFavoriteUseCase
    implements UseCase<Either<DomainException, bool>, FavoritePreferenceModel> {
  final FavoritesRepository _repository;

  CreateFavoriteUseCase(this._repository);

  @override
  Future<Either<DomainException, bool>> call(FavoritePreferenceModel favorite) {
    return _repository.createByFavorite(favorite);
  }
}
