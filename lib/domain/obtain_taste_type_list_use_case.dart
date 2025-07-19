import 'package:app/core/exceptions/domain_exception.dart';
import 'package:app/data/models/dropdown_model.dart';
import 'package:app/data/repositories/tastes_repository.dart';
import 'package:app/domain/no_params.dart';
import 'package:app/domain/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class ObtainTasteTypesUseCaseUseCase
    implements UseCase<Either<DomainException, List<DropdownModel>>, NoParams> {
  final TastesRepository _repository;

  ObtainTasteTypesUseCaseUseCase(this._repository);

  @override
  Future<Either<DomainException, List<DropdownModel>>> call(NoParams _) =>
      _repository.fetchTasteTypes();
}
