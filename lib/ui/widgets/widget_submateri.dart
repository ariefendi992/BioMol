import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';

class WSubMateri extends StatelessWidget {
  final String title;
  final EdgeInsets margin;
  final double fontSize;
  final FontWeight fontWeight;
  final Function() onTap;
  const WSubMateri({
    super.key,
    required this.title,
    required this.onTap,
    this.margin = EdgeInsets.zero,
    this.fontSize = 24,
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: margin,
        child: Text(
          '${title}',
          style: blackTextStyle.copyWith(
            color: kBlackColor2,
            fontSize: fontSize,
            // fontWeight: fontWeight,
            fontFamily: caveatBrush,
          ),
        ),
      ),
    );
  }
}
