import 'dart:async';
import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/daftarMateri', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgPrimaryColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kBgTopLinearColor,
                kBgBottomLinearColor,
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CImagetAsset(
                  imageName: 'assets/images/logo_tutwuri.png',
                  width: 44,
                ),
                SizedBox(width: 2),
                CImagetAsset(
                  imageName: 'assets/images/logo_unidar.png',
                  width: 50,
                ),
                SizedBox(width: 2),
                CImagetAsset(
                  imageName: 'assets/images/logo_unismuh.png',
                  width: 44,
                ),
                SizedBox(width: 2),
                CImagetAsset(
                  imageName: 'assets/images/kampus_merdeka.png',
                  width: 100,
                )
              ],
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Booklet',
                    style: whiteStyle.copyWith(
                      fontSize: 48,
                      fontFamily: 'Gochi Hand',
                      letterSpacing: 1.2,
                      height: 2,
                      shadows: [
                        Shadow(
                            color: kWhiteColor,
                            offset: Offset(0.1, 3),
                            blurRadius: 10)
                      ],
                    ),
                  ),
                  Text(
                    'BIOKIMIA',
                    style: whiteStyle.copyWith(
                      fontSize: 76,
                      fontFamily: 'Gochi Hand',
                      letterSpacing: 1.2,
                      height: 0.2,
                      shadows: [
                        Shadow(
                            color: kWhiteColor,
                            offset: Offset(0.2, 3),
                            blurRadius: 16)
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(right: 48),
                    child: Text(
                      'Part-I',
                      style: whiteStyle.copyWith(
                        fontSize: 32,
                        fontFamily: 'Gochi Hand',
                        letterSpacing: 1.2,
                        height: 2,
                        shadows: [
                          Shadow(
                              color: kWhiteColor,
                              offset: Offset(0.2, 2),
                              blurRadius: 10)
                        ],
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 32),
                width: double.infinity,
                child: Stack(
                  children: [
                    CImagetAsset(
                      imageName: 'assets/images/gambar1.crop.png',
                      width: 250,
                    ),
                    Positioned(
                      right: 0,
                      top: 40,
                      child: CImagetAsset(
                        imageName: 'assets/images/gambar2.crop.png',
                        width: 150,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tim Penyusun',
                    style: blackTextStyle.copyWith(
                      fontSize: 22,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    'Wa Nirmala',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: medium,
                      height: 0,
                    ),
                  ),
                  Text(
                    'Farida Bahalwan',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: medium,
                      height: 0,
                    ),
                  ),
                  Text(
                    'Rafiah Mahmudah',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: medium,
                      height: 0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
