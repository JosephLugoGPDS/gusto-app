import 'package:app/core/exceptions/data_exception.dart';
import 'package:app/core/exceptions/domain_exception.dart';
import 'package:app/data/models/dropdown_model.dart';
import 'package:app/data/models/taste_detail_model.dart';
import 'package:app/data/models/taste_list_model.dart';
import 'package:app/data/sources/local/url_image_local_source.dart';
import 'package:app/data/sources/remote/tastes_remote_source.dart';
import 'package:app/core/extensions/tastes_extension.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

abstract class TastesRepository {
  Future<Either<DomainException, TasteListModel>> fetchTasteList(String offset);
  Future<Either<DomainException, TasteDetailModel>> fetchTasteDetail(String id);
  Future<Either<DomainException, List<DropdownModel>>> fetchTasteTypes();
}

@Injectable(as: TastesRepository)
class TastesRepositoryImpl extends TastesRepository {
  final TastesRemoteSource _tastesRemoteSource;
  final UrlImageLocalSource _imageLocalSource;
  TastesRepositoryImpl(this._tastesRemoteSource, this._imageLocalSource);

  @override
  Future<Either<DomainException, TasteListModel>> fetchTasteList(
      String offset) async {
    try {
      final response = await _tastesRemoteSource.getTasteList(offset);
      final result = response.when(
        success: (data) =>
            data.copyWith(imageUrl: _imageLocalSource.getUrlImage()),
        failure: (e) => throw e,
      );
      return Right(result);
    } on DataException catch (e, _) {
      return Left(DataException.toDomainError(e));
    } catch (e, _) {
      return Left(DataException.toDomainError(const UnexpectedError()));
    }
  }

  @override
  Future<Either<DomainException, TasteDetailModel>> fetchTasteDetail(
      String id) async {
    try {
      final response = await _tastesRemoteSource.getTasteDetail(id);
      final result = response.when(
        success: (data) => data,
        failure: (e) => throw e,
      );
      return Right(result);
    } on DataException catch (e, _) {
      return Left(DataException.toDomainError(e));
    } catch (e, _) {
      return Left(DataException.toDomainError(const UnexpectedError()));
    }
  }

  @override
  Future<Either<DomainException, List<DropdownModel>>> fetchTasteTypes() async {
    try {
      final response = await _tastesRemoteSource.getTasteTypes();
      final result = response.when(
        success: (data) => data,
        failure: (e) => throw e,
      );
      return Right(result.toDropdownList());
    } on DataException catch (e, _) {
      return Left(DataException.toDomainError(e));
    } catch (e, _) {
      return Left(DataException.toDomainError(const UnexpectedError()));
    }
  }
}
