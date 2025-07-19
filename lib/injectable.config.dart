// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:fluro/fluro.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i9;
import 'package:package_info_plus/package_info_plus.dart' as _i10;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import 'app/api_dev.dart' as _i8;
import 'app/api_prod.dart' as _i7;
import 'app/base_api.dart' as _i6;
import 'core/di/app_module.dart' as _i28;
import 'core/di/logger_module.dart' as _i27;
import 'core/di/network_module.dart' as _i25;
import 'core/di/route_module.dart' as _i26;
import 'core/navigation/route.dart' as _i11;
import 'data/repositories/tastes_repository.dart' as _i18;
import 'data/services/tastes_service.dart' as _i16;
import 'data/sources/local/url_image_local_source.dart' as _i13;
import 'data/sources/remote/tastes_remote_source.dart' as _i17;
import 'domain/obtain_taste_full_use_case.dart' as _i19;
import 'domain/obtain_taste_list_use_case.dart' as _i20;
import 'domain/obtain_taste_type_list_use_case.dart' as _i21;
import 'logic/dropdown_open/dropdown_open_cubit.dart' as _i4;
import 'logic/splash/verify_session/verify_session_cubit.dart' as _i14;
import 'logic/splash/version_app/version_app_cubit.dart' as _i15;
import 'logic/taste_full/taste_full_cubit.dart' as _i22;
import 'logic/taste_list/taste_list_cubit.dart' as _i23;
import 'logic/taste_types/taste_types_cubit.dart' as _i24;

const String _prod = 'prod';
const String _dev = 'dev';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    final routeModule = _$RouteModule();
    final loggerModule = _$LoggerModule();
    final appModule = _$AppModule();
    gh.lazySingleton<_i3.Dio>(
      () => networkModule.dioNonInterceptor(),
      instanceName: 'dio_non_interceptor',
    );
    gh.factory<_i4.DropdownOpenCubit>(() => _i4.DropdownOpenCubit());
    gh.lazySingleton<_i5.FluroRouter>(() => routeModule.fluroRouter);
    gh.lazySingleton<_i6.IApi>(
      () => _i7.ApiProd(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i6.IApi>(
      () => _i8.ApiDev(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i9.Logger>(() => loggerModule.logger);
    await gh.factoryAsync<_i10.PackageInfo>(
      () => appModule.packageInfo,
      preResolve: true,
    );
    gh.factory<_i11.Routes>(() => _i11.Routes(gh<_i5.FluroRouter>()));
    await gh.factoryAsync<_i12.SharedPreferences>(
      () => appModule.sharePreferences,
      preResolve: true,
    );
    gh.factory<String>(
      () => networkModule.pokeApiDomain(gh<_i6.IApi>()),
      instanceName: 'poke_api_domain',
    );
    gh.factory<String>(
      () => networkModule.environment(gh<_i6.IApi>()),
      instanceName: 'environment',
    );
    gh.factory<String>(
      () => networkModule.limitServices(gh<_i6.IApi>()),
      instanceName: 'limit',
    );
    gh.factory<String>(
      () => networkModule.spritsDomain(gh<_i6.IApi>()),
      instanceName: 'sprits_domain',
    );
    gh.factory<_i13.UrlImageLocalSource>(() => _i13.UrlImageLocalSourceImpl(
        gh<String>(instanceName: 'sprits_domain')));
    gh.factory<_i14.VerifySessionCubit>(() => _i14.VerifySessionCubit());
    gh.factory<_i15.VersionAppCubit>(
        () => _i15.VersionAppCubit(gh<_i10.PackageInfo>()));
    gh.lazySingleton<_i3.Interceptor>(() => networkModule.interceptor(
          gh<_i6.IApi>(),
          gh<_i9.Logger>(),
        ));
    gh.lazySingleton<_i3.Dio>(() => networkModule.dio(gh<_i3.Interceptor>()));
    gh.singleton<_i16.TasteListService>(_i16.TasteListService(
      gh<_i3.Dio>(),
      baseUrl: gh<String>(instanceName: 'poke_api_domain'),
    ));
    gh.factory<_i17.TastesRemoteSource>(() => _i17.TastesRemoteSourceImpl(
          gh<_i16.TasteListService>(),
          gh<String>(instanceName: 'limit'),
        ));
    gh.factory<_i18.TastesRepository>(() => _i18.TastesRepositoryImpl(
          gh<_i17.TastesRemoteSource>(),
          gh<_i13.UrlImageLocalSource>(),
        ));
    gh.factory<_i19.ObtainTasteFullUseCaseUseCase>(
        () => _i19.ObtainTasteFullUseCaseUseCase(gh<_i18.TastesRepository>()));
    gh.factory<_i20.ObtainTasteListUseCaseUseCase>(
        () => _i20.ObtainTasteListUseCaseUseCase(gh<_i18.TastesRepository>()));
    gh.factory<_i21.ObtainTasteTypesUseCaseUseCase>(
        () => _i21.ObtainTasteTypesUseCaseUseCase(gh<_i18.TastesRepository>()));
    gh.factory<_i22.TasteFullCubit>(
        () => _i22.TasteFullCubit(gh<_i19.ObtainTasteFullUseCaseUseCase>()));
    gh.factory<_i23.TasteListCubit>(
        () => _i23.TasteListCubit(gh<_i20.ObtainTasteListUseCaseUseCase>()));
    gh.factory<_i24.TasteTypesCubit>(
        () => _i24.TasteTypesCubit(gh<_i21.ObtainTasteTypesUseCaseUseCase>()));
    return this;
  }
}

class _$NetworkModule extends _i25.NetworkModule {}

class _$RouteModule extends _i26.RouteModule {}

class _$LoggerModule extends _i27.LoggerModule {}

class _$AppModule extends _i28.AppModule {}
