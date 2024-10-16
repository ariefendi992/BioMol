import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';

class WTitleSubtitle extends StatelessWidget {
  final String title;
  final String fontFamily;
  final EdgeInsets margin;
  final bool isTitle;
  final bool isSubSubTitle;
  final double height;

  const WTitleSubtitle({
    super.key,
    required this.title,
    this.fontFamily = 'Caveat Brush',
    this.margin = EdgeInsets.zero,
    this.isTitle = true,
    this.isSubSubTitle = false,
    this.height = 1.4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Text(
        title,
        style: blackTextStyle.copyWith(
          fontFamily: fontFamily,
          height: height,
          fontSize: isTitle
              ? 26.0
              : isSubSubTitle
                  ? 20.0
                  : 24.0,
        ),
      ),
    );
  }
}
