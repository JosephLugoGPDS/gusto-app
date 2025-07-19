import 'package:flutter_bloc/flutter_bloc.dart';

class CurrentTasteImagesCubit extends Cubit<int> {
  CurrentTasteImagesCubit() : super(0);

  void setCurrentImage(int index) {
    emit(index);
  }
}
