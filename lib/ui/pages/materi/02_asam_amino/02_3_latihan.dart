import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/pages/materi/02_asam_amino/games_asam_02.dart';

class LatihanAsamAminoPage extends StatelessWidget {
  const LatihanAsamAminoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return GamesAsamAmino2();
                    },
                  ),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: kBlueColor1,
                elevation: 6,
                shadowColor: kBlackColor.withAlpha(100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Container(
                width: 160,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Start Game',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Icon(
                      Icons.keyboard_double_arrow_right_outlined,
                      color: kBlackColor2,
                      size: 28,
                    )
                  ],
                ),
              ),
            ),
          ),
          // WNomorHalaman(nomorHalaman: '23'),
        ],
      ),
    );
  }
}
