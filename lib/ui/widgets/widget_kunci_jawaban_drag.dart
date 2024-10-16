import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';

class WKunciJawaban extends StatelessWidget {
  final String title;
  const WKunciJawaban({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 28,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: kOrangeColor2,
        border: Border.all(
          color: kBlackColor2,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: blackTextStyle.copyWith(
          fontSize: 16,
          fontFamily: caveatBrush,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
