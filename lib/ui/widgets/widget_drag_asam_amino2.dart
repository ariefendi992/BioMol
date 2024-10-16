import 'package:flutter/material.dart';
import 'package:bio_mol/models/item_model.dart';
import 'package:bio_mol/ui/widgets/widget_kunci_jawaban_drag.dart';

class WidgetDragAsamAmino2 extends StatelessWidget {
  final ItemModel item;
  const WidgetDragAsamAmino2(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: item,
      child: WKunciJawaban(
        title: item.name,
      ),
      feedback: WKunciJawaban(
        title: item.name,
      ),
      childWhenDragging: Container(
        width: 110,
        height: 28,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
