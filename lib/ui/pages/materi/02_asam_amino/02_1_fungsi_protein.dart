import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class FungsiProteinPage extends StatelessWidget {
  const FungsiProteinPage({super.key});

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
                    title: '4) Struktur Kuartener ',
                    isTitle: false,
                    isSubSubTitle: true,
                    margin: const EdgeInsets.only(top: 6, bottom: 12),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: WParagraf(
                          teks:
                              'Merupakan hasil interaksi dari beberapa molekul '
                              'protein tersier setiap unit molekul tersier disebut '
                              'dikenal dengan subunit dan keseluruhan rantai '
                              'polipeptida. Pembentukan struktur kuartener protein '
                              'menyebabkan bagian nonpolar protein tidak terpapar '
                              'pada lingkungan yang berair sehingga protein yang '
                              'memiliki bagian nonpolar yang panjang dapat larut '
                              'dalam air. Hemoglobin merupakan contoh protein yang '
                              'membentuk struktur kuartener dengan 4 subunit '
                              '(2 sub unit α dan 2 subunit β).',
                          textIndent: false,
                          textHeight: 1,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Column(
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar2.17.png',
                              width: MediaQuery.of(context).size.width,
                            ),
                            Center(
                              child: WGambarTitle(
                                text: 'Gambar 2.16. Struktur  Hemoglobin',
                                margin: const EdgeInsets.only(top: 2),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  WTitleSubtitle(
                    title: 'b. Fungsi Protein',
                    isTitle: false,
                    margin: const EdgeInsets.only(top: 16),
                    height: 1,
                  ),
                  WTitleSubtitle(
                    title: '1) Protein Sebagai Enzim ',
                    isSubSubTitle: true,
                    isTitle: false,
                    height: 1,
                    margin: const EdgeInsets.only(top: 6, bottom: 6),
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 3,
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Merupakan protein yang dapat ',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: 'berfungsi sebagai katalisator',
                                style: blackTextStyle.copyWith(
                                    fontFamily: 'Caveat Brush',
                                    fontSize: 14,
                                    backgroundColor: kGreenColor1),
                              ),
                              TextSpan(
                                text:
                                    '. Contoh glukosa oksidase yang mengkatalisis '
                                    'glukosa menjadi asam glukonat, urikase yaitu '
                                    'enzim yang dapat membongkar asam urat menjadi alantoin.',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: Column(
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar2.18.png',
                              width: 100,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  WTitleSubtitle(
                    title: '2) Protein Transport ',
                    isSubSubTitle: true,
                    isTitle: false,
                    height: 1,
                    margin: const EdgeInsets.only(top: 12, bottom: 6),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar2.19.png',
                              width: 100,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        flex: 2,
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'MProtein yang ',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'dapat mengikat dan membawa molekul atau ion '
                                    'yang khas dari satu organ ke organ lainnya',
                                style: blackTextStyle.copyWith(
                                    fontFamily: 'Caveat Brush',
                                    fontSize: 14,
                                    backgroundColor: kGreenColor1),
                              ),
                              TextSpan(
                                text:
                                    '. Contoh protein transport yang mudah adalah '
                                    'mioglobin yang menyimpan dan mendistribusikan '
                                    'oksogen ke dalam otot.',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
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
                    title: '3) Protein Nutrien',
                    isSubSubTitle: true,
                    isTitle: false,
                    height: 1,
                    margin: const EdgeInsets.only(top: 12, bottom: 6),
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 3,
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'disebut juga protein penyimpanan, protein ini merupakan ',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'cadangan makanan yang dibutuhkan untuk pertumbuhan dan perkembangan',
                                style: blackTextStyle.copyWith(
                                    fontFamily: 'Caveat Brush',
                                    fontSize: 14,
                                    backgroundColor: kYellow1),
                              ),
                              TextSpan(
                                text:
                                    ' Beberapa contoh protein ini, sering kita '
                                    'temukan dalam kehidupan sehari-hari seperti '
                                    'ovalbumin merupakan protein utama putih '
                                    'telur, kasein sebagai protein utama dalam susu.',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: Column(
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar2.20.png',
                              width: 100,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  WTitleSubtitle(
                    title: '4) Protein Kontraktil',
                    isSubSubTitle: true,
                    isTitle: false,
                    height: 1,
                    margin: const EdgeInsets.only(top: 12, bottom: 6),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar2.21.png',
                              width: 100,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        flex: 2,
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Merupakan golongan protein yang ',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: 'berperan dalam proses gerak',
                                style: blackTextStyle.copyWith(
                                    fontFamily: 'Caveat Brush',
                                    fontSize: 14,
                                    backgroundColor: kYellow1),
                              ),
                              TextSpan(
                                text:
                                    '. Sebagai contoh misalnya; miosin, merupakan '
                                    'unsur filamen tak bergerak dalam myofibril.',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '21')
        ],
      ),
    );
  }
}
