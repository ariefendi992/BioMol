import 'package:bio_mol/ui/widgets/widget_dialog_image.dart';
import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class DnaPage extends StatelessWidget {
  const DnaPage({super.key});

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
                  const SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            GestureDetector(
                              onDoubleTap: () {
                                showDialog(
                                  context: context,
                                  builder: (_) => WDialogImage(
                                      imageUrl: 'assets/images/gambar3.8.png'),
                                );
                              },
                              child: Image.asset(
                                'assets/images/gambar3.8.png',
                              ),
                            ),
                            WGambarTitle(
                              text:
                                  'Gambar 3.8. Ikatan Fosfodiester pada Rantai DNA dan RNA',
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
                                    "Pada molekul DNA dan RNA, ikatan fosfodiester adalah ",
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "ikatan antara atom karbon 3' dari satu molekul "
                                    "gula dengan atom karbon 5' dari molekul gula "
                                    "lainnya yang dijembatani oleh adanya gugus fosfat",
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                  backgroundColor: kBlueColor1,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ". Ikatan fosfodiester ini merupakan kerangka "
                                    "dasar dalam pembentukan rantai panjang dari "
                                    "suatu senyawa asam nukleat.",
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
                    title: 'a DNA',
                    isTitle: false,
                    margin: const EdgeInsets.only(top: 16, bottom: 12),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'Rantai tunggal DNA selalu memiliki gugus 5’ fosfat '
                              'bebas pada satu ujung dan gugus 3’ hidroksil pada '
                              'ujung lainnya',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                            backgroundColor: kBlueColor1,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text:
                              '. Molekul DNA pada organisme berupa dua rantai '
                              'doble heliks. Jika suatu rantai DNA memiliki kode '
                              'GTCCAT maka susunannya adalah 5’ pGpTpCpCpApT – '
                              'OH 3’. Aturan Chargaff menyatakan bahwa proporsi '
                              'A selalu sama dengan T dan proporsi G selalu sama '
                              'dengan C (A=T dan G=C) sehingga proporsi purin '
                              'sama dengan pirimidin. ',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            GestureDetector(
                              onDoubleTap: () {
                                showDialog(
                                  context: context,
                                  builder: (_) => WDialogImage(
                                      imageUrl: 'assets/images/gambar3.9.png'),
                                );
                              },
                              child: Image.asset(
                                'assets/images/gambar3.9.png',
                              ),
                            ),
                            WGambarTitle(
                              text:
                                  'Gambar 3.8. Ikatan Fosfodiester pada Rantai DNA dan RNA',
                              margin: const EdgeInsets.only(top: 4),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Column(
                          children: [
                            WParagraf(
                              teks:
                                  'Double heliks terjadi karena adanya ikatan '
                                  'dua basa nitrogen yang ada pada dua rantai '
                                  'membentuk pasangan basa. Molekul dupleks DNA '
                                  'terdiri dari rantai paralel dan antiparalel '
                                  'dimana satu rantai 3’ ke 5’ dan rantai '
                                  'lainnya 5’ ke 3’.',
                              textIndent: false,
                              textHeight: 1.4,
                            ),
                            const SizedBox(height: 6),
                            GestureDetector(
                              onDoubleTap: () {
                                showDialog(
                                  context: context,
                                  builder: (_) => WDialogImage(
                                      imageUrl: 'assets/images/gambar3.10.png'),
                                );
                              },
                              child: Image.asset(
                                'assets/images/gambar3.10.png',
                              ),
                            ),
                            WGambarTitle(
                              text:
                                  'Gambar 3.10. Ikatan Hidrogen pada Pasangan Basa',
                              margin: const EdgeInsets.only(top: 4),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '26'),
        ],
      ),
    );
  }
}
