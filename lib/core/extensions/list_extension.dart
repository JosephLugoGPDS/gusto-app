import 'package:app/core/constants/constants.dart';
import 'package:app/core/extensions/string_extension.dart';
import 'package:app/data/models/favorite_preference_model.dart';

extension SpriteNameMapper on List<String> {
  List<String> toSpriteNames(String baseName) {
    return where((s) => s.isNotEmpty)
        .map((s) => s.contains(Constants.shinyKey)
            ? '$baseName (${Constants.shinyKey.capitalize})'
            : baseName)
        .toList();
  }
}

extension FavoritesExtension on List<FavoritePreferenceModel> {
  List<String> toFavoriteStringList() {
    return map((s) => s.id).toList();
  }
}

extension FavoriteModelMapper on List<FavoritePreferenceModel> {
  Set<String> toFavoriteStringSet() {
    return map((e) => e.id.toString()).toSet();
  }
}
