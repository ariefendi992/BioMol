import 'package:bio_mol/ui/widgets/widget_dialog_image.dart';
import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class FungsiAsamNukleat0 extends StatelessWidget {
  const FungsiAsamNukleat0({super.key});

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
                    title: '1. Nukleotida dan Nukleosida',
                    margin: const EdgeInsets.only(top: 6, bottom: 6),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'Nukleotida yang merupakan monomer asam nukleat '
                              '(building block) memiliki banyak fungsi dalam '
                              'metabolisme selular. ',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Nukleotida memiliki tiga karakteristik komponen '
                              'yaitu basa nitrogen heterosiklik, gula pentosa dan gugus fosfat',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                            backgroundColor: kBlueColor1,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text: '. Molekul ',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text:
                              'nukleotida yang gugus fosfatnya mengalami hidrolisis dinamakan dengan nukleosida.',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                            backgroundColor: kBlueColor1,
                            height: 1.4,
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
                                      imageUrl: 'assets/images/gambar3.1.png'),
                                );
                              },
                              child: CImagetAsset(
                                imageName: 'assets/images/gambar3.1.png',
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            WGambarTitle(
                              text: 'Gambar 3.1. Struktur Nukleotida',
                              margin: const EdgeInsets.only(top: 2),
                            )
                          ],
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
                                      imageUrl: 'assets/images/gambar3.2.png'),
                                );
                              },
                              child: CImagetAsset(
                                imageName: 'assets/images/gambar3.2.png',
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            WGambarTitle(
                              text: 'Gambar 3.2. Struktur Nukleosida',
                              margin: const EdgeInsets.only(top: 2),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Basa nitrogen',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                            backgroundColor: kOrangeColor1,
                          ),
                        ),
                        TextSpan(
                          text:
                              ' heterosiklik yang menyusun nukleotida yaitu purin dan pirimidin.',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Center(
                    child: Column(
                      children: [
                        CImagetAsset(
                          imageName: 'assets/images/gambar3.3.png',
                          width: MediaQuery.of(context).size.width / 1.5,
                        ),
                        WGambarTitle(
                          text: 'Gambar 3.3. Struktur Pirimidin dan Purin',
                          margin: const EdgeInsets.only(top: 4),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  WParagraf(
                    teks:
                        'Ada empat basa nitrogen yang merupakan unit pembentuk '
                        'DNA yaitu adenin (A), guanin (G), sitosin (C) dan '
                        'timin (T). Sedangkan pembentuk RNA yaitu adenin (A), '
                        'guanin (G), sitosin (C)vdan urasil (U). ',
                    textIndent: false,
                    textHeight: 1.4,
                  ),
                  const SizedBox(height: 12),
                  Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          onDoubleTap: () {
                            showDialog(
                              context: context,
                              builder: (_) => WDialogImage(
                                  imageUrl: 'assets/images/gambar3.4.png'),
                            );
                          },
                          child: CImagetAsset(
                            imageName: 'assets/images/gambar3.4.png',
                            width: MediaQuery.of(context).size.width / 1.4,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: WGambarTitle(
                            text:
                                'Gambar 3.4. Basa Nitrogen Penyusun DNA dan RNA. '
                                'Adenin dan guanin merupakan basa nitrogen jenis '
                                'purin sedangkan sitosin, timin dan urasil adalah '
                                'derivat pirimidin.',
                            margin: const EdgeInsets.only(top: 4),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '24')
        ],
      ),
    );
  }
}
