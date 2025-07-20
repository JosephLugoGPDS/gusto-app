import 'package:app/logic/images/current_taste_image_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should emit correct index', () {
    final cubit = CurrentTasteImagesCubit();
    cubit.setCurrentImage(2);
    expect(cubit.state, 2);
  });
}
