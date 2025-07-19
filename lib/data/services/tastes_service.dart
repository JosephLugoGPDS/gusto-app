import 'package:app/data/models/taste_detail_model.dart';
import 'package:app/data/models/taste_list_model.dart';
import 'package:app/data/models/taste_type_list_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'tastes_service.g.dart';

@singleton
@RestApi()
abstract class TasteListService {
  @factoryMethod
  factory TasteListService(Dio dio,
      {@Named('poke_api_domain') String? baseUrl}) = _TasteListService;

  @GET('/v2/pokemon')
  Future<TasteListModel> getTasteList(
      @Query('offset') String offset, @Query('limit') String limit);

  @GET('/v2/pokemon-form/{id}')
  Future<TasteDetailModel> getTasteDetail(@Path('id') String id);

  @GET('/v2/type')
  Future<TasteTypeListModel> getTypes();
}
