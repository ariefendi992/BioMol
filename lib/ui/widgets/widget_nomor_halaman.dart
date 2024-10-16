import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';

class WNomorHalaman extends StatelessWidget {
  final String nomorHalaman;
  const WNomorHalaman({
    super.key,
    required this.nomorHalaman,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        width: 44,
        height: 48,
        decoration: BoxDecoration(
            color: kBlueColor1,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
        child: Text(
          '  ${nomorHalaman}',
          style: blackTextStyle.copyWith(
            color: kBlackColor2,
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}
