import 'package:app/core/exceptions/domain_exception.dart';
import 'package:app/data/models/favorite_preference_model.dart';
import 'package:app/data/repositories/favorites_repository.dart';
import 'package:app/domain/no_params.dart';
import 'package:app/domain/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class ObtainFavoritesUseCase
    implements
        UseCase<Either<DomainException, List<FavoritePreferenceModel>>,
            NoParams> {
  final FavoritesRepository _repository;

  ObtainFavoritesUseCase(this._repository);

  @override
  Future<Either<DomainException, List<FavoritePreferenceModel>>> call(
      NoParams _) {
    return _repository.fetchList();
  }
}
