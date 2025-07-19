import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

@injectable
class VersionAppCubit extends Cubit<String> {
  final PackageInfo _packageInfo;

  VersionAppCubit(this._packageInfo) : super('1.0.0');

  void updateVersion() {
    emit(_packageInfo.version);
  }
}
