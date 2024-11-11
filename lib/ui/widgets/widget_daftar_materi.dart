import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';

class WidgetDaftarMateri extends StatelessWidget {
  final EdgeInsets margin;
  final String title;
  final String nomorHalaman;
  final double fontSizeTitle;
  final double fontSizePage;
  final Function() onTap;
  const WidgetDaftarMateri(
      {super.key,
      required this.title,
      required this.nomorHalaman,
      required this.onTap,
      this.margin = EdgeInsets.zero,
      this.fontSizeTitle = 26,
      this.fontSizePage = 24});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: margin,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${title}',
              style: blackTextStyle.copyWith(
                fontSize: fontSizeTitle,
                // fontWeight: semiBold,
                fontFamily: caveatBrush,
              ),
            ),
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
              width: 36,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: kBlueColor1, borderRadius: BorderRadius.circular(10)),
              child: Text(
                '${nomorHalaman}',
                style: blackTextStyle.copyWith(
                  fontSize: fontSizePage,
                  fontFamily: caveatBrush,
                  // fontWeight: medium,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
