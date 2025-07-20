import 'package:app/core/exceptions/domain_exception.dart';
import 'package:app/data/repositories/favorites_repository.dart';
import 'package:app/domain/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteFavoriteByIdUseCase
    implements UseCase<Either<DomainException, bool>, String> {
  final FavoritesRepository _repository;

  DeleteFavoriteByIdUseCase(this._repository);

  @override
  Future<Either<DomainException, bool>> call(String id) {
    return _repository.deleteById(id);
  }
}
