import 'package:bio_mol/ui/widgets/widget_dialog_image.dart';
import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class GolonganKarbohidratBagian5 extends StatelessWidget {
  const GolonganKarbohidratBagian5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              margin: const EdgeInsets.only(bottom: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WTitleSubtitle(
                    title: '2) Glikogen',
                    isTitle: false,
                    isSubSubTitle: true,
                    margin: const EdgeInsets.only(top: 6),
                  ),
                  WParagraf(
                    teks: 'Glikogen merupakan jenis polisakarida yang '
                        'berfungsi sebagai cadangan makanan pada hewan. '
                        'Komposisi glikogen dalam liver adalah 10% sedangkan '
                        'dalam otot 1 – 2%.',
                    textIndent: false,
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
                                    imageUrl: 'assets/images/gambar1.22.png',
                                    dialogHeight: 220,
                                  );
                                });
                          },
                          child: CImagetAsset(
                            imageName: 'assets/images/gambar1.22.png',
                            width: MediaQuery.of(context).size.width / 1.4,
                          ),
                        ),
                        WGambarTitle(
                          text: 'Gambar 1.22. Struktur Glikogen',
                          margin: const EdgeInsets.only(top: 4),
                        ),
                      ],
                    ),
                  ),
                  WTitleSubtitle(
                    title: '3) Selulosa',
                    isTitle: false,
                    isSubSubTitle: true,
                    margin: const EdgeInsets.only(top: 12),
                  ),
                  WParagraf(
                    teks: 'Glikogen merupakan jenis polisakarida yang '
                        'berfungsi sebagai cadangan makanan pada hewan. '
                        'Komposisi glikogen dalam liver adalah 10% sedangkan '
                        'dalam otot 1 – 2%.',
                    textIndent: false,
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
                                      imageUrl: 'assets/images/gambar1.23.png');
                                });
                          },
                          child: CImagetAsset(
                            imageName: 'assets/images/gambar1.23.png',
                            width: MediaQuery.of(context).size.width / 1.4,
                          ),
                        ),
                        WGambarTitle(
                          text:
                              'Gambar 1.23. Struktur Selulosa Pembentuk Mikrofibil',
                          margin: const EdgeInsets.only(top: 4),
                        ),
                      ],
                    ),
                  ),
                  WTitleSubtitle(
                    title: '4) Dekstrin ',
                    isTitle: false,
                    isSubSubTitle: true,
                    margin: const EdgeInsets.only(top: 12),
                  ),
                  WParagraf(
                    teks: 'Merupakan zat antara dalam pemecahan amilum. '
                        'Molekulnya lebih sederhana, lebih mudah larut di dalam '
                        'air. Tahapan hidrolisis amilum: Amilum → amilum '
                        'terlarut → amilodekstrin → eritrodekstrin → '
                        'akrodekstrin → maltosa',
                    textIndent: false,
                  ),
                  const SizedBox(height: 12),
                  Center(
                    child: Column(
                      children: [
                        CImagetAsset(
                          imageName: 'assets/images/gambar1.24.png',
                          width: MediaQuery.of(context).size.width / 1.4,
                        ),
                        WGambarTitle(
                          text: 'Gambar 1.24. Struktur Dekstrin',
                          margin: const EdgeInsets.only(top: 4),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '12'),
        ],
      ),
    );
  }
}
