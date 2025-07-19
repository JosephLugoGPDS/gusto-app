import 'package:app/core/extensions/string_extension.dart';
import 'package:app/core/helpers/tastes_helper.dart';
import 'package:flutter/widgets.dart';

class BackgroundItemCard extends StatelessWidget {
  const BackgroundItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorPair = TastesHelper.getRandomColorDropdownItem();
    print('JY - colorPair: $colorPair');
    print('JY - colorPair id: ${colorPair.id.hexToColor}');
    print('JY - colorPair desc: ${colorPair.description.hexToColor}');
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colorPair.id.hexToColor,
            colorPair.description.hexToColor,
          ],
        ),
      ),
    );
  }
}
