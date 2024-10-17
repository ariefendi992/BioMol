import 'package:bio_mol/ui/widgets/widget_dialog_image.dart';
import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class PengertianLipida0 extends StatelessWidget {
  const PengertianLipida0({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(bottom: 60),
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WTitleSubtitle(
                    title: '1. Pengertian Lipida',
                    margin: const EdgeInsets.only(top: 6, bottom: 6),
                  ),
                  WParagraf(
                    teks: 'Lipid didefinisikan sebagai biomolekul turunan '
                        'hidrokarbon yang mengandung satu gugus ester. Lipid '
                        'merupakan senyawa organik yang terdapat dalam alam, '
                        'tak larut dalam air tetapi larut dalam pelarut organik '
                        'non polar seperti dietil eter, etanol,metanol, eter, '
                        'kloroform, dan benzene.',
                    textIndent: false,
                    textHeight: 1.4,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            Image.asset('assets/images/gambar4.1.png'),
                            WGambarTitle(
                              text: 'Gambar 4.1 Struktur umum lemak dengan R1, '
                                  'R2, R3 dapat sama atau berbeda',
                              margin: const EdgeInsets.only(top: 4),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Secara umum, ',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'lipid disusun oleh adanya molekul asam lemak',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 14,
                                  backgroundColor: kBlueColor1,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' yang dapat berikatan dengan molekul alkohol '
                                    'baik dalam bentuk gliserol maupun alkohol '
                                    'rantai panjang seperti setil alkohol. Lipid '
                                    'yang beredar di dalam tubuh diperoleh dari '
                                    'dua sumber yaitu dari makanan dan hasil '
                                    'produksi organ hati, yang biasadisimpan di '
                                    'dalam sel-sel lemak sebagai cadangan makanan. '
                                    'Trigliserol adalah sumber cadangan kalori '
                                    'yang memiliki energi tinggi. ',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  WTitleSubtitle(
                    title: '2. Asam Lemak',
                    margin: const EdgeInsets.only(top: 16, bottom: 6),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'Asam lemak merupakan komponen penyusun lipid yang '
                              'memiliki bentuk berupa kepala dan ekor. Kepala '
                              'asam lemak berupa gugus karboksil yang diberi '
                              'nomor karbon 1 dan ekor berupa senyawa hidrokarbon '
                              'jenuh atau tak jenuh. ',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: 'Berdasarkan kejenuhannya, asam lemak dibagi '
                              'menjadi dua yaitu asam lemak jenuh dan asam '
                              'lemak tidak jenuh',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                            backgroundColor: kBlueColor1,
                          ),
                        ),
                        TextSpan(
                          text: '.',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            GestureDetector(
                              onDoubleTap: () {
                                showDialog(
                                  context: context,
                                  builder: (_) => WDialogImage(
                                      imageUrl: 'assets/images/gambar4.2.png'),
                                );
                              },
                              child: Image.asset('assets/images/gambar4.2.png'),
                            ),
                            WGambarTitle(
                              text:
                                  'Gambar 4.2. Contoh Asam Lemak. (a) Asam stearat; (b) Asam Oleat; (c) Asam Linolenat',
                              margin: const EdgeInsets.only(top: 4),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'Adanya ikatan rangkap pada rantai karbon '
                                    'penyusun asam lemak sering dilambangkan '
                                    'dengan Δ (delta) yang diikuti dengan nomor '
                                    'karbon yang memiliki ikatan rangkap.',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  WTitleSubtitle(
                    title: 'a. Asam Lemak Jenuh',
                    isSubSubTitle: true,
                    isTitle: false,
                    margin: const EdgeInsets.only(top: 12),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: WParagraf(
                          teks:
                              'Asam lemak jenuh merupakan asam lemak yang tidak '
                              'mempunyai ikatan rangkap pada strukturnya',
                          textIndent: false,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Column(
                          children: [
                            GestureDetector(
                              onDoubleTap: () {
                                showDialog(
                                  context: context,
                                  builder: (_) => WDialogImage(
                                      imageUrl: 'assets/images/gambar4.3.png'),
                                );
                              },
                              child: Image.asset('assets/images/gambar4.3.png'),
                            ),
                            WGambarTitle(
                              text: 'Gambar 4.3. Struktur Asam Lemak Jenuh',
                              margin: const EdgeInsets.only(top: 4),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '32')
        ],
      ),
    );
  }
}
