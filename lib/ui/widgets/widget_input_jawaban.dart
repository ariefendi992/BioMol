import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';

class WInputJawaban extends StatefulWidget {
  final TextEditingController controller;
  final double width;
  final String hintText;
  final String labelText;
  final Function(String) onChange;

  const WInputJawaban({
    super.key,
    required this.controller,
    required this.onChange,
    this.width = 100,
    this.hintText = 'Masukkan Kata',
    this.labelText = 'Jawaban No.1',
  });

  @override
  State<WInputJawaban> createState() => _WInputJawabanState();
}

class _WInputJawabanState extends State<WInputJawaban> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: kBlackColor2,
          ),
        ),
      ),
      child: TextField(
        controller: widget.controller,
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: widget.labelText,
          labelStyle: TextStyle(
            fontFamily: caveatBrush,
            fontSize: 20,
            color: kBlackColor2,
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(fontFamily: caveatBrush),
        ),
        style: TextStyle(fontFamily: caveatBrush, fontSize: 18),
        onChanged: widget.onChange,
      ),
    );
  }
}
