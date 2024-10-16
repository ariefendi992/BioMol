import 'package:bloc/bloc.dart';

class BooleanCubit extends Cubit<bool> {
  BooleanCubit() : super(false);

  void defaultToggle() {
    emit(false);
  }

  void toggle() {
    emit(!state);
  }
}
