import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class GolonganKarbohidratPage extends StatelessWidget {
  const GolonganKarbohidratPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      // padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 6),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: defaultPadding),
                            child: WTitleSubtitle(
                                title: '3. Golongan Karbohidrat'),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: defaultPadding),
                            child: WParagraf(
                              teks: 'Berdasarkan Berat Molekul dan panjangnya '
                                  'rantai hidrokarbon makromolekulnya karbohidrat '
                                  'dibedakan menjadi; Monosakarida, oligosakarida, dan '
                                  'polisakarida',
                              textIndent: false,
                              fontFamily: 'Caveat Brush',
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: defaultPadding),
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: WParagraf(
                                teks: 'Tabel 1.1. Klasifikasi Karbohidrat',
                                textAlign: TextAlign.center,
                                textIndent: false,
                                fontSize: 12,
                                fontFamily: 'Caveat Brush',
                                textHeight: 0.9,
                              ),
                            ),
                          ),
                          CImagetAsset(
                            imageName: 'assets/images/tabel1.1.crop.png',
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 2),
                          ),
                          const SizedBox(height: 4),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: defaultPadding),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                WTitleSubtitle(
                                  title: 'a. Monosakarida',
                                  isTitle: false,
                                ),
                                WParagraf(
                                  teks: 'Monosakarida berarti satu gula yang '
                                      'disebut dengan gula sederhana (karbohidrat '
                                      'paling sederhana karena tidak bisa lagi '
                                      'dihidrolisa). Monosakarida larut di dalam air '
                                      'dan rasanya manis, sehingga secara umum disebut '
                                      'juga gula. Penamaan kimianya selalu berakhiran -osa. '
                                      'Dalam Ilmu Gizi hanya ada tiga jenis monosakarida '
                                      'yang penting yaitu, glukosa, fruktosa dan galaktosa.',
                                  textIndent: false,
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 16,
                                ),
                                const SizedBox(height: 16),
                                CImagetAsset(
                                  imageName: 'assets/images/gambar1.7.png',
                                  width: MediaQuery.of(context).size.width,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 6),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: defaultPadding),
                                  width: MediaQuery.of(context).size.width,
                                  child: Center(
                                    child: WParagraf(
                                      teks: 'Gambar 1.7. Karbohidrat Sederhana',
                                      textAlign: TextAlign.center,
                                      textIndent: false,
                                      fontSize: 12,
                                      fontFamily: 'Caveat Brush',
                                      textHeight: 0.9,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 14),
                                  child: RichText(
                                    textAlign: TextAlign.justify,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              'Atom C pada monosakarida biasanya berupa C '
                                              'kiral sehingga monosakarida memiliki '
                                              'stereoisomer. Oleh sebab itu, monosakarida '
                                              'memiliki enantiomer dan epimer.',
                                          style: blackTextStyle.copyWith(
                                            fontSize: 16,
                                            fontFamily: 'Caveat Brush',
                                          ),
                                        ),
                                        WidgetSpan(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: kBlueColor1,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      defaultRadius),
                                            ),
                                            child: Text(
                                              ' Enantiomer ',
                                              style: blackTextStyle.copyWith(
                                                fontFamily: 'Caveat Brush',
                                                fontSize: 16,
                                                height: 1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              'adalah stereoisomer yang merupakan '
                                              'bayangan kaca dari suatu molekul. '
                                              'Berdasarkan sifat stereoisomer, '
                                              'molekul monosakarida dibagi menjadi '
                                              'Dextro (D) dan Levo (L).',
                                          style: blackTextStyle.copyWith(
                                            fontSize: 16,
                                            fontFamily: 'Caveat Brush',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.only(bottom: 70),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CImagetAsset(
                                        imageName:
                                            'assets/images/gambar1.8.crop.png',
                                        width: 200,
                                      ),
                                      const SizedBox(height: 2),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        width: 200,
                                        child: WParagraf(
                                          teks:
                                              'Gambar 1.8. Struktur dekstro dan levo Karbohidrat',
                                          textAlign: TextAlign.center,
                                          textIndent: false,
                                          fontSize: 12,
                                          fontFamily: 'Caveat Brush',
                                          textHeight: 0.9,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: 10,
                  bottom: 55,
                  child: Container(
                    width: 159,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [kBgTopLinearColor, kBgBottomLinearColor],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Catatan Penting',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                          ),
                        ),
                        Text(
                          'Monosakarida yang terdapat di alam pada umumnya berbentuk '
                          'D, dan jarang sekali dalam bentuk L, kecuali L-fruktosa '
                          'yang terdapat dalam mukopolisakarida dan mukoprotein.',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          WNomorHalaman(nomorHalaman: '7'),
        ],
      ),
    );
  }
}
