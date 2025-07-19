import 'dart:math';
import 'package:app/data/models/dropdown_model.dart';
import 'dart:ui';

abstract class TastesHelper {
  static final List<Map<String, Color>> _colorPairs = [
    {'primary': const Color(0xFF9CDDF2), 'secondary': const Color(0xFF5A808C)},
    {'primary': const Color(0xFFEDC045), 'secondary': const Color(0xFF9B7E2D)},
    {'primary': const Color(0xFFEDBFD2), 'secondary': const Color(0xFFA58593)},
    {'primary': const Color(0xFF72BE4C), 'secondary': const Color(0xFF406B2B)},
    {'primary': const Color(0xFFED7622), 'secondary': const Color(0xFFAA5518)},
    {'primary': const Color(0xFF6C5591), 'secondary': const Color(0xFF302D36)},
    {'primary': const Color(0xFFC28552), 'secondary': const Color(0xFF755031)},
    {'primary': const Color(0xFF71BB4B), 'secondary': const Color(0xFF4A7C32)},
  ];

  static DropdownModel getRandomColorDropdownItem() {
    final randomIndex = Random().nextInt(_colorPairs.length);
    final pair = _colorPairs[randomIndex];

    final primary = pair['primary']!;
    final secondary = pair['secondary']!;

    return DropdownModel(
      _colorToHex(primary),
      _colorToHex(secondary),
    );
  }

  static String _colorToHex(Color color) {
    final hex = [color.red, color.green, color.blue]
        .map((c) => c.toRadixString(16).padLeft(2, '0').toUpperCase())
        .join();

    return '#$hex';
  }
}
