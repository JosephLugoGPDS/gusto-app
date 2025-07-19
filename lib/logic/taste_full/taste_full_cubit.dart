import 'package:app/core/bloc/result_state.dart';
import 'package:app/data/models/taste_detail_model.dart';
import 'package:app/domain/obtain_taste_full_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class TasteFullCubit extends Cubit<ResultState<TasteDetailModel>> {
  final ObtainTasteFullUseCaseUseCase _useCase;

  TasteFullCubit(this._useCase) : super(const ResultState.initial());

  Future<void> obtainTasteFullDetail(String id) async {
    emit(const ResultState.loading());

    final result = await _useCase.call(id);

    result.fold(
      (failure) => emit(ResultState.error(error: failure.message)),
      (data) => emit(ResultState.data(data: data)),
    );
  }
}
