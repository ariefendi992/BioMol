import 'package:bloc/bloc.dart';

class ScoreCubit extends Cubit<int> {
  ScoreCubit() : super(0);

  int incrementeScore() {
    emit(state + 20);
    return state;
  }

  void decrementScore() {
    emit(state - 5);
    // print('State ==> ${state}');
  }

  int totalScore() {
    return state;
  }

  resetScore() {
    emit(0);
  }
}
