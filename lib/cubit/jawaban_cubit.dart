import 'package:bloc/bloc.dart';
import 'package:bio_mol/data/asam_amino_data.dart';
import 'package:bio_mol/models/item_model.dart';

part 'jawaban_state.dart';

class JawabanCubit extends Cubit<JawabanState> {
  JawabanCubit() : super(JawabanState([]));

  void fetchKunciJawabanAsamAmino2() {
    final items = itemsIdentifikasi;
    items.shuffle();
    emit(JawabanState(items));
  }

  void removeitem(int id) {
    final items = state.items.where((item) => item.id != id).toList();
    emit(JawabanState(items));
  }

  void recallData() {
    fetchKunciJawabanAsamAmino2();
  }
}
