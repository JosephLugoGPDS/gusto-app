import 'dart:convert';

import 'package:app/core/preferences/preferences_key.dart';
import 'package:app/data/models/favorite_preference_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class FavoritesPreferencesSource {
  Future<List<FavoritePreferenceModel>?> getFavorites();
  Future<bool> saveFavorites(List<FavoritePreferenceModel> favorites);
  Future<bool> saveFavoriteById(FavoritePreferenceModel favorites);
  Future<bool> deleteFavorites();
}

@Injectable(as: FavoritesPreferencesSource)
class FavoritesPreferencesSourceImpl implements FavoritesPreferencesSource {
  final SharedPreferences _client;

  FavoritesPreferencesSourceImpl(this._client);

  @override
  Future<List<FavoritePreferenceModel>?> getFavorites() async {
    final response = _client.getString(PreferencesKey.favoritePrefs);
    if (response != null) {
      return (json.decode(response) as List)
          .map((item) => FavoritePreferenceModel.fromJson(item))
          .toList();
    } else {
      return null;
    }
  }

  @override
  Future<bool> saveFavorites(List<FavoritePreferenceModel> favorites) {
    final jsonList = favorites.map((e) => e.toJson()).toList();
    return _client.setString(
        PreferencesKey.favoritePrefs, jsonEncode(jsonList));
  }

  @override
  Future<bool> deleteFavorites() {
    return _client.remove(PreferencesKey.favoritePrefs);
  }

  @override
  Future<bool> saveFavoriteById(FavoritePreferenceModel favorite) {
    final response = _client.getString(PreferencesKey.favoritePrefs);
    var list = response != null
        ? (json.decode(response) as List)
            .map((item) => FavoritePreferenceModel.fromJson(item))
            .toList()
        : [];
    list.add(favorite);
    return _client.setString(PreferencesKey.favoritePrefs, jsonEncode(list));
  }
}
