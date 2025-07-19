import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppModule {
  @preResolve
  Future<SharedPreferences> get sharePreferences async =>
      await SharedPreferences.getInstance();

  @preResolve
  Future<PackageInfo> get packageInfo async => await PackageInfo.fromPlatform();
}
