import 'package:injectable/injectable.dart';

abstract class UrlImageLocalSource {
  String getUrlImage();
}

@Injectable(as: UrlImageLocalSource)
class UrlImageLocalSourceImpl implements UrlImageLocalSource {
  final String _url;

  const UrlImageLocalSourceImpl(@Named('sprits_domain') this._url);

  @override
  String getUrlImage() => _url;
}
