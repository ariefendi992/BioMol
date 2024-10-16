import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class StrukturProteinPage extends StatelessWidget {
  const StrukturProteinPage({super.key});

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
                    title: '2. Protein',
                    margin: const EdgeInsets.only(top: 6, bottom: 6),
                  ),
                  WTitleSubtitle(
                    title: 'a. Struktur Protein',
                    height: 1,
                    isTitle: false,
                  ),
                  const SizedBox(height: 6),
                  WParagraf(
                    teks: 'Protein adalah senyawa organik kompleks '
                        'berbobot molekul besar yang terdiri dari asam amino '
                        'yang dihubungkan satu sama lain dengan ikatan peptida. '
                        'Struktur protein mengandung N (15,30-18%), C (52,40%), '
                        'H (6,90-7,30%), O (2123,50%), S (0,8-2%), disamping '
                        'C, H, O (seperti juga karbohidrat dan lemak), dan S '
                        'kadang-kadang P, Fe dan Cu (sebagai senyawa kompleks '
                        'dengan protein).',
                    textIndent: false,
                    textHeight: 1,
                  ),
                  WTitleSubtitle(
                    title: '1) Struktur primer ',
                    isTitle: false,
                    isSubSubTitle: true,
                    margin: const EdgeInsets.only(top: 6),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar2.12.png',
                              width: MediaQuery.of(context).size.width,
                            ),
                            Center(
                              child: WGambarTitle(
                                text: 'Gambar 2.11. Struktur Primer Protein',
                                margin: const EdgeInsets.only(top: 2),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Rantai polipeptida sebuah protein '
                                    'terdiri dari asam-asam amino yang '
                                    'dihubungkan satu sama lain secara kovalen '
                                    'melalui ikatan peptida yang ',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                ),
                              ),
                              TextSpan(
                                text: 'membentuk rantai lurus dan panjang',
                                style: blackTextStyle.copyWith(
                                    fontFamily: 'Caveat Brush',
                                    backgroundColor: kBlueColor1),
                              ),
                              TextSpan(
                                text: ' sebagai untaian polipeptida tunggal.',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  WTitleSubtitle(
                    title: '2) Struktur Sekunder',
                    isTitle: false,
                    isSubSubTitle: true,
                    margin: const EdgeInsets.only(top: 16, bottom: 6),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: WParagraf(
                          teks:
                              'Pada struktur sekunder, protein sudah mengalami interaksi '
                              'intermolekul, melalui rantai samping asam amino. '
                              'Ikatan pembentuk struktur ini didominasi oleh ikatan '
                              'hidrogen antar rantai samping yang membentuk pola '
                              'tertentu bergantung pada orientasi ikatan hidrogennya.',
                          textIndent: false,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar2.13.png',
                              width: MediaQuery.of(context).size.width,
                            ),
                            Center(
                              child: WGambarTitle(
                                text: 'Gambar 2.12. Struktur heliks protein',
                                margin: const EdgeInsets.only(top: 2),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  WTitleSubtitle(
                    title: '2) Struktur Tersier',
                    isTitle: false,
                    isSubSubTitle: true,
                    margin: const EdgeInsets.only(top: 16, bottom: 6),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar2.14.png',
                              width: MediaQuery.of(context).size.width,
                            ),
                            Center(
                              child: WGambarTitle(
                                text:
                                    'Gambar 2.15. Jenis Ikatan pada StrukturTersier ',
                                margin: const EdgeInsets.only(top: 2),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WParagraf(
                              teks: 'Merupakan struktur yang dibangun oleh '
                                  'struktur primer atau sekunder dan '
                                  'distabilkan oleh interakasi hidrofobik, '
                                  'hidrofilik, jembatan garam, ikatan hidrogen '
                                  'dan ikatan disulfida (antar atom S) '
                                  'sehingga strukturnya menjadi kompleks.',
                              textIndent: false,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: Column(
                                    children: [
                                      CImagetAsset(
                                        imageName:
                                            'assets/images/gambar2.15.png',
                                        width:
                                            MediaQuery.of(context).size.width,
                                      ),
                                      Center(
                                        child: WGambarTitle(
                                          text:
                                              'Gambar 2.13. StrukturTersier Protein Globural',
                                          margin: const EdgeInsets.only(top: 2),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Flexible(
                                  child: Column(
                                    children: [
                                      CImagetAsset(
                                        imageName:
                                            'assets/images/gambar2.16.png',
                                        width:
                                            MediaQuery.of(context).size.width,
                                      ),
                                      Center(
                                        child: WGambarTitle(
                                          text:
                                              'Gambar 2.14. StrukturTersier Protein Fiber',
                                          margin: const EdgeInsets.only(top: 2),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
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
          WNomorHalaman(nomorHalaman: '20')
        ],
      ),
    );
  }
}
