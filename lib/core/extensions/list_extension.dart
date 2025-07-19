import 'package:app/core/constants/constants.dart';
import 'package:app/core/extensions/string_extension.dart';

extension SpriteNameMapper on List<String> {
  List<String> toSpriteNames(String baseName) {
    return where((s) => s.isNotEmpty)
        .map((s) => s.contains(Constants.shinyKey)
            ? '$baseName (${Constants.shinyKey.capitalize})'
            : baseName)
        .toList();
  }
}
