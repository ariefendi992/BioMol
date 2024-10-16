import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';

class WParagraf extends StatelessWidget {
  final String teks;
  final double fontSize;
  final double textHeight;
  final TextAlign textAlign;
  final bool textIndent;
  final String fontFamily;
  final Color backgroundColor;
  const WParagraf({
    super.key,
    required this.teks,
    this.fontSize = 16,
    this.textHeight = 1,
    this.textAlign = TextAlign.justify,
    this.textIndent = true,
    this.fontFamily = 'Caveat Brush',
    this.backgroundColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        children: [
          WidgetSpan(child: SizedBox(width: textIndent ? 20.0 : 0.0)),
          TextSpan(
            text: teks,
            style: blackTextStyle.copyWith(
              fontSize: fontSize,
              height: textHeight,
              fontFamily: fontFamily,
              backgroundColor: backgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
