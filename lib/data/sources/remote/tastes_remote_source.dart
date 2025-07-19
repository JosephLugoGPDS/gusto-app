import 'package:app/core/api/api_result.dart';
import 'package:app/core/exceptions/data_exception.dart';
import 'package:app/data/models/taste_detail_model.dart';
import 'package:app/data/models/taste_list_model.dart';
import 'package:app/data/models/taste_type_list_model.dart';
import 'package:app/data/services/tastes_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class TastesRemoteSource {
  Future<ApiResult<TasteListModel>> getTasteList(String offset);
  Future<ApiResult<TasteDetailModel>> getTasteDetail(String id);
  Future<ApiResult<TasteTypeListModel>> getTasteTypes();
}

@Injectable(as: TastesRemoteSource)
class TastesRemoteSourceImpl implements TastesRemoteSource {
  final TasteListService _service;
  final String _limit;

  TastesRemoteSourceImpl(this._service, @Named('limit') this._limit);

  @override
  Future<ApiResult<TasteListModel>> getTasteList(String offset) async {
    try {
      final response = await _service.getTasteList(offset, _limit);
      return ApiResult.success(data: response);
    } on DioException catch (e) {
      return ApiResult.failure(
          dataException: DataException.fromDioException(e));
    } catch (e) {
      return const ApiResult.failure(dataException: UnexpectedError());
    }
  }

  @override
  Future<ApiResult<TasteDetailModel>> getTasteDetail(String id) async {
    try {
      final response = await _service.getTasteDetail(id);
      return ApiResult.success(data: response);
    } on DioException catch (e) {
      return ApiResult.failure(
          dataException: DataException.fromDioException(e));
    } catch (e) {
      return const ApiResult.failure(dataException: UnexpectedError());
    }
  }

  @override
  Future<ApiResult<TasteTypeListModel>> getTasteTypes() async {
    try {
      final response = await _service.getTypes();
      return ApiResult.success(data: response);
    } on DioException catch (e) {
      return ApiResult.failure(
          dataException: DataException.fromDioException(e));
    } catch (e) {
      return const ApiResult.failure(dataException: UnexpectedError());
    }
  }
}
