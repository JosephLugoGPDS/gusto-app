import 'package:app/core/exceptions/domain_exception.dart';
import 'package:app/data/repositories/favorites_repository.dart';
import 'package:app/domain/no_params.dart';
import 'package:app/domain/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteAllFavoritesUseCase
    implements UseCase<Either<DomainException, bool>, NoParams> {
  final FavoritesRepository _repository;

  DeleteAllFavoritesUseCase(this._repository);

  @override
  Future<Either<DomainException, bool>> call(NoParams _) {
    return _repository.deleteAll();
  }
}
