import 'package:app/core/bloc/result_state.dart';
import 'package:app/data/models/dropdown_model.dart';
import 'package:app/domain/no_params.dart';
import 'package:app/domain/obtain_taste_type_list_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class TasteTypesCubit extends Cubit<ResultState<List<DropdownModel>>> {
  final ObtainTasteTypesUseCaseUseCase _useCase;

  TasteTypesCubit(this._useCase) : super(const ResultState.initial()) {
    obtainTasteTypes();
  }

  Future<void> obtainTasteTypes() async {
    emit(const ResultState.loading());

    final result = await _useCase.call(NoParams());

    result.fold(
      (failure) => emit(ResultState.error(error: failure.message)),
      (data) => emit(ResultState.data(data: data)),
    );
  }
}
