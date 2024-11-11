import 'package:bio_mol/ui/widgets/widget_dialog_image.dart';
import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class GolonganKarbohidratBagian4 extends StatelessWidget {
  const GolonganKarbohidratBagian4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              margin: const EdgeInsets.only(bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 6),
                  WTitleSubtitle(
                    title: '3) Tetrasakarida',
                    isTitle: false,
                    isSubSubTitle: true,
                  ),
                  WParagraf(
                    teks: 'Stakiosa terdiri dari 4 monosakarida yaitu 2 '
                        'galaktosa, 1 glukosa dan 1 fruktosa. Stakiosa tidak '
                        'bersifat mereduksi.',
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Column(
                        children: [
                          GestureDetector(
                            onDoubleTap: () {
                              showDialog(
                                  context: context,
                                  builder: (_) {
                                    return WDialogImage(
                                        imageUrl:
                                            'assets/images/gambar1.18.png');
                                  });
                            },
                            child: CImagetAsset(
                              imageName: 'assets/images/gambar1.18.png',
                              width: 260,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Gambar 1.18. Struktur Stakiosa',
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                              fontFamily: 'Caveat Brush',
                              height: 1,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  WTitleSubtitle(
                    title: 'C. Polisakarida',
                    isTitle: false,
                    margin: const EdgeInsets.only(top: 16),
                  ),
                  WParagraf(
                    teks: 'Merupakan senyawa karbohidrat kompleks, '
                        'dapat mengandung lebih dari 60.000 molekul '
                        'monosakarida yang tersusun membentuk rantai lurus '
                        'ataupun bercabang dan setiap cincin dapat membentuk '
                        'ikatan glikosida. Secara nomenklatur, polisakarida '
                        'dibagi menjadi dua, yaitu homopolisakarida dan '
                        'heteropolisakarida. Homopolisakarida yang mengalami '
                        'hidrolisis hanya menghasilkan satu jenis monosakarida, '
                        'sedangkan heteropolisakarida bila mengalami hidrolisis '
                        'sempurna menghasilkan lebih dari satu jenis monosakarida.',
                    textHeight: 1.125,
                    textIndent: false,
                  ),
                  WTitleSubtitle(
                    title: '1) Pati',
                    isTitle: false,
                    isSubSubTitle: true,
                    margin: const EdgeInsets.only(top: 12),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Pati merupakan senyawa cadangan pada '
                              'tumbuhan yang terdiri atas unit glukosa. Pati ',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text:
                              'terdiri atas dua komponen homopolisakarida yaitu '
                              'amilosa dan amilopektin',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            backgroundColor: kBlueColor1,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text:
                              '. Susunan komponen tersebut dalam tumbuhan yaitu '
                              '10 – 30% amilosa dan 70 – 90% amilopektin.',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onDoubleTap: () {
                                showDialog(
                                    context: context,
                                    builder: (_) {
                                      return WDialogImage(
                                        imageUrl:
                                            'assets/images/gambar1.19.crop.png',
                                        dialogHeight: 180,
                                      );
                                    });
                              },
                              child: CImagetAsset(
                                imageName: 'assets/images/gambar1.19.crop.png',
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            Center(
                              child: WGambarTitle(
                                text: 'Gambar 1.19. Struktur Amilosa',
                                margin: const EdgeInsets.only(bottom: 6),
                              ),
                            ),
                            Container(
                              width: 160,
                              child: WParagraf(
                                teks: 'Amilosa dapat membentuk struktur heliks '
                                    'dimana rata-rata terdapat 8 molekul '
                                    'glukosa setiap putaran heliks. ',
                                textIndent: false,
                                textHeight: 1,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 6),
                      Flexible(
                        flex: 2,
                        child: Column(
                          children: [
                            GestureDetector(
                              onDoubleTap: () {
                                showDialog(
                                    context: context,
                                    builder: (_) {
                                      return WDialogImage(
                                          imageUrl:
                                              'assets/images/gambar1.20.crop.png');
                                    });
                              },
                              child: CImagetAsset(
                                imageName: 'assets/images/gambar1.20.crop.png',
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            WGambarTitle(
                              text: 'Gambar 1.20. Struktur Amilopektin',
                              margin: const EdgeInsets.only(bottom: 6),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          onDoubleTap: () {
                            showDialog(
                                context: context,
                                builder: (_) {
                                  return WDialogImage(
                                      imageUrl:
                                          'assets/images/gambar1.21.crop.png');
                                });
                          },
                          child: CImagetAsset(
                            imageName: 'assets/images/gambar1.21.crop.png',
                            width: MediaQuery.of(context).size.width / 1.485,
                          ),
                        ),
                        WGambarTitle(
                            text:
                                'Gambar 1.21. Perbedaan Struktur Amilosa dan Amilopektin')
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '11')
        ],
      ),
    );
  }
}
