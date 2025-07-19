import 'package:app/core/extensions/string_extension.dart';
import 'package:app/data/models/dropdown_model.dart';
import 'package:app/data/models/taste_detail_model.dart';
import 'package:app/data/models/taste_model.dart';
import 'package:app/data/models/taste_type_list_model.dart';

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

extension TasteListModelMapper on TasteTypeListModel {
  List<DropdownModel> toDropdownList() {
    return [
      const DropdownModel('all', 'Todos'),
      ...results.map((e) => DropdownModel(e.url, e.name.capitalize))
    ];
  }
}

extension SpritesMapper on Sprites {
  List<String> toList() {
    return [
      frontDefault,
      backDefault,
      frontShiny,
      backShiny,
    ];
  }
}
