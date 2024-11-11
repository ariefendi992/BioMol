import 'dart:async';
import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';

class SplashPageTablet extends StatefulWidget {
  const SplashPageTablet({super.key});

  @override
  State<SplashPageTablet> createState() => _SplashPageTabletState();
}

class _SplashPageTabletState extends State<SplashPageTablet> {
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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;
    final heightBody = screenHeight - paddingTop;
    // final textScaler = MediaQuery.textScalerOf(context).scale(1);

    Widget content() {
      return SafeArea(
          child: Column(
        children: [
          Container(
            height: heightBody * 0.1,
            width: screenWidth,
            padding: const EdgeInsets.symmetric(horizontal: 44),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/tutwuriHandayani.png', height: 75),
                const SizedBox(width: 6),
                Image.asset(
                  'assets/images/unidar.png',
                  height: 75,
                ),
                const SizedBox(width: 6),
                Image.asset(
                  'assets/images/unismuh.png',
                  height: 75,
                ),
                const SizedBox(width: 6),
                Image.asset(
                  'assets/images/kampusMerdeka.png',
                  height: 75,
                ),
              ],
            ),
          ),
          Container(
            height: heightBody * 0.3,
            width: screenWidth,
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Booklet\n',
                  style: whiteStyle.copyWith(
                    fontSize: 90,
                    letterSpacing: 1.2,
                    fontFamily: 'Gochi Hand',
                    height: 0.2,
                    shadows: [
                      Shadow(
                        color: kWhiteColor,
                        offset: Offset(-2, 7),
                        blurRadius: 20,
                      )
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
                          fontSize: 120,
                          letterSpacing: 1.2,
                          fontFamily: 'Gochi Hand',
                          // height: 1,
                          shadows: [
                            Shadow(
                              color: kWhiteColor,
                              offset: Offset(-2, 7),
                              blurRadius: 20,
                            )
                          ],
                        ),
                      ),
                      WidgetSpan(
                        child: Text(
                          'Part-I\n',
                          style: whiteStyle.copyWith(
                            fontSize: 60,
                            letterSpacing: 1.2,
                            fontFamily: 'Gochi Hand',
                            height: -0.5,
                            shadows: [
                              Shadow(
                                color: kWhiteColor,
                                offset: Offset(-2, 7),
                                blurRadius: 20,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: heightBody * 0.55,
            padding: const EdgeInsets.symmetric(horizontal: 44),
            width: screenWidth,
            child: Stack(
              children: [
                // NOTE: GAMBAR SAMPUL 1
                Positioned(
                  left: screenWidth * 0.07,
                  child: Container(
                    height: heightBody * 0.39,
                    width: screenWidth * 0.5,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'assets/images/sampul1.png',
                      ),
                    ),
                  ),
                ),
                // NOTE: GAMBAR SAMPUL 2
                Positioned(
                  top: 60,
                  left: screenWidth * 0.39,
                  child: Container(
                    height: screenHeight * 0.45,
                    width: screenWidth * 0.5,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        'assets/images/sampul2_rotasi.png',
                        alignment: Alignment.centerRight,
                      ),
                    ),
                  ),
                ),
                // NOTE: TIM PENYUSUN
                Positioned(
                  bottom: 10,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        Text(
                          'Tim Penyusun',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Luckybones',
                            fontSize: 36,
                            letterSpacing: 1.2,
                            height: 0,
                          ),
                        ),
                        Text(
                          'Wa Nirmala',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Luckybones',
                            fontSize: 28,
                            height: 0,
                          ),
                        ),
                        Text(
                          'Farida Bahalwan',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Luckybones',
                            fontSize: 28,
                            height: 0,
                          ),
                        ),
                        Text(
                          'Rafiah Mahmudah',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Luckybones',
                            fontSize: 28,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: heightBody * 0.05,
          )
        ],
      ));
    }

    return Scaffold(
      backgroundColor: kBgPrimaryColor,
      body: Container(
        width: screenWidth,
        height: screenHeight,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kBgTopLinearColor,
              kBgBottomLinearColor,
            ],
          ),
        ),
        child: content(),
      ),
    );
  }
}
