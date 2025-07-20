import 'package:app/logic/dropdown_open/dropdown_open_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('emits true when opened', () {
    final cubit = DropdownOpenCubit();
    cubit.changeOpen(true);
    expect(cubit.state, true);
  });
}
