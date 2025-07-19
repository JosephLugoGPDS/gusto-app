import 'package:app/data/models/taste_model.dart';

extension TasteModelExtension on TasteModel {
  TasteModel get withID {
    return copyWith(id: _loadID(url));
  }

  String? _loadID(String? url) {
    if (url == null) return null;
    final splitUrl = url.split('/');
    final id = splitUrl[splitUrl.length - 2];
    return id;
    // return '$spritDomain/$id.png';
  }
}
