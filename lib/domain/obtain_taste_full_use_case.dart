import 'package:app/core/exceptions/domain_exception.dart';
import 'package:app/data/models/taste_detail_model.dart';
import 'package:app/data/repositories/tastes_repository.dart';
import 'package:app/domain/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class ObtainTasteFullUseCaseUseCase
    implements UseCase<Either<DomainException, TasteDetailModel>, String> {
  final TastesRepository _repository;

  ObtainTasteFullUseCaseUseCase(this._repository);

  @override
  Future<Either<DomainException, TasteDetailModel>> call(String id) =>
      _repository.fetchTasteDetail(id);
}
