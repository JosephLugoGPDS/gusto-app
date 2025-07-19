import 'dart:ui';

import 'package:app/core/exceptions/data_exception.dart';
import 'package:app/core/exceptions/domain_exception.dart';
import 'package:app/core/resources/colors.dart';

extension StringExtension on String {
  DomainException get toDataDomainException =>
      DomainException(exceptionType: DataException.databaseException(this));

  DataException get toDataException => DataException.responseError(this, 0);

  Color get hexToColor {
    try {
      String cleanHex = toUpperCase().replaceAll("#", "");
      if (cleanHex.length == 6) {
        cleanHex = "FF$cleanHex";
      }
      return Color(int.parse(cleanHex, radix: 16));
    } catch (_) {
      return AppColors.whiteColor;
    }
  }

  String get capitalize {
    if (isEmpty) return '';
    return this[0].toUpperCase() + substring(1);
  }

  String imageUrlFormatted(String url) => '$url/$this.png';
}
