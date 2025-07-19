import 'package:app/core/exceptions/domain_exception.dart';
import 'package:app/data/models/taste_list_model.dart';
import 'package:app/data/repositories/tastes_repository.dart';
import 'package:app/domain/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class ObtainTasteListUseCaseUseCase
    implements UseCase<Either<DomainException, TasteListModel>, String> {
  final TastesRepository _repository;

  ObtainTasteListUseCaseUseCase(this._repository);

  @override
  Future<Either<DomainException, TasteListModel>> call(String offset) =>
      _repository.fetchTasteList(offset);
}
