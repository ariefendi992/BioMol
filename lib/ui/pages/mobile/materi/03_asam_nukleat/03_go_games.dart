import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/pages/mobile/materi/03_asam_nukleat/games_asam_nukleat1.dart';

class GoGamesAsamNukleat extends StatelessWidget {
  const GoGamesAsamNukleat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return GamesAsamNukleat1Page();
                    }));
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
                    width: 150,
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
            ],
          ),
          // WNomorHalaman(nomorHalaman: '28')
        ],
      ),
    );
  }
}
