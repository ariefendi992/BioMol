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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final paddingTop = MediaQuery.of(context).padding.top;
    final heightBody = height - paddingTop;

    Widget content() {
      return SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: heightBody * 0.1,
              width: width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/tutwuriHandayani.png',
                    height: 36,
                  ),
                  const SizedBox(width: 6),
                  Image.asset(
                    'assets/images/unidar.png',
                    height: 36,
                  ),
                  const SizedBox(width: 6),
                  Image.asset(
                    'assets/images/unismuh.png',
                    height: 36,
                  ),
                  const SizedBox(width: 6),
                  Image.asset(
                    'assets/images/kampusMerdeka.png',
                    height: 36,
                  ),
                ],
              ),
            ),
            Container(
              width: width,
              height: heightBody * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Booklet',
                    style: whiteStyle.copyWith(
                      fontSize: 60,
                      fontFamily: 'Gochi Hand',
                      letterSpacing: 1.2,
                      height: 0.5,
                      shadows: [
                        Shadow(
                            color: kWhiteColor,
                            offset: Offset(0.1, 3),
                            blurRadius: 10)
                      ],
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.right,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'BIOKIMIA\n',
                          style: whiteStyle.copyWith(
                            fontSize: 72,
                            fontFamily: 'Gochi Hand',
                            letterSpacing: 1.2,
                            shadows: [
                              Shadow(
                                  color: kWhiteColor,
                                  offset: Offset(0.2, 3),
                                  blurRadius: 16)
                            ],
                          ),
                        ),
                        WidgetSpan(
                          child: Text(
                            'Part-I',
                            style: whiteStyle.copyWith(
                              fontSize: 32,
                              fontFamily: 'Gochi Hand',
                              letterSpacing: 1.2,
                              height: -1.2,
                              shadows: [
                                Shadow(
                                  color: kWhiteColor,
                                  offset: Offset(0.2, 2),
                                  blurRadius: 10,
                                )
                              ],
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 32),
              height: heightBody * 0.55,
              width: width,
              child: Stack(
                children: [
                  CImagetAsset(
                    imageName: 'assets/images/sampul1.png',
                    width: 250,
                  ),
                  Positioned(
                    left: width * 0.345,
                    top: 40,
                    child: CImagetAsset(
                      imageName: 'assets/images/sampul2_rotasi.png',
                      width: width * 0.75,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Tim Penyusun',
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: bold,
                            fontFamily: 'Luckybones',
                          ),
                        ),
                        Text(
                          'Wa Nirmala',
                          style: blackTextStyle.copyWith(
                            fontSize: 22,
                            fontWeight: medium,
                            height: 0,
                            fontFamily: 'Luckybones',
                          ),
                        ),
                        Text(
                          'Farida Bahalwan',
                          style: blackTextStyle.copyWith(
                            fontSize: 22,
                            fontWeight: medium,
                            height: 0,
                            fontFamily: 'Luckybones',
                          ),
                        ),
                        Text(
                          'Rafiah Mahmudah',
                          style: blackTextStyle.copyWith(
                            fontSize: 22,
                            fontWeight: medium,
                            height: 0,
                            fontFamily: 'Luckybones',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Container(
            //   height: height * 0.1,
            //   width: width,
            //   child:
            // ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgPrimaryColor,
      body: Container(
        width: width,
        height: height,
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
        child: content(),
      ),
    );
  }
}
