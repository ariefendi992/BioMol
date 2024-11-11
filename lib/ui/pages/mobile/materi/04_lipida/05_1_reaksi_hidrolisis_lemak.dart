import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class ReaksiHidrolisisLemakPage extends StatelessWidget {
  const ReaksiHidrolisisLemakPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(bottom: 60),
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding,
                vertical: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WTitleSubtitle(
                    title: 'c. Reaksi Hidrolisis Lemak',
                    isTitle: false,
                    margin: const EdgeInsets.only(bottom: 6),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Image.asset('assets/images/gambar4.16.png'),
                        ),
                        WGambarTitle(
                          text: 'Gambar 4.16. Reaksi Hidrolisis Lemak',
                          margin: const EdgeInsets.only(top: 2),
                        )
                      ],
                    ),
                  ),
                  WTitleSubtitle(
                    title: 'd. Reaksi Hidrogenasi',
                    isTitle: false,
                    margin: const EdgeInsets.only(bottom: 6, top: 12),
                  ),
                  WParagraf(
                    teks:
                        'Reaksi hidrogenasi Adalah reaksi penjenuhan lemak yang '
                        'mengubah wujud lemak menjadi padat dengan bantuan logam '
                        'Platina (Pt) atau Nikel (Ni).',
                    textIndent: false,
                  ),
                  const SizedBox(height: 12),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Image.asset('assets/images/gambar4.17.png'),
                        ),
                        WGambarTitle(
                          text: 'Gambar 4.16. Reaksi Hidrogenasi',
                          margin: const EdgeInsets.only(top: 2),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '37'),
        ],
      ),
    );
  }
}
