extension DoubleExtension on double? {
  String get priceFormattedStr => this == null ? '-' : this!.toStringAsFixed(2);
}
