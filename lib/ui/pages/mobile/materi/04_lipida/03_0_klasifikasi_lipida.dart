import 'package:bio_mol/ui/widgets/widget_dialog_image.dart';
import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class KlasifikasiLipidaPage extends StatelessWidget {
  const KlasifikasiLipidaPage({super.key});

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
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/gambar4.5.png'),
                        WGambarTitle(
                          text: 'Gambar 4.5. (a) Lipid Bilayer yang '
                              'terdiri dari Asam Lemak Jenuh (b) Lipid Bilayer '
                              'yang Terdiri atas Campuran Asam Lemak Jenuh '
                              'dan Tak Jenuh ',
                          margin: const EdgeInsets.only(top: 2, bottom: 16),
                        )
                      ],
                    ),
                  ),
                  WTitleSubtitle(title: '3. Klasifikasi Lipida'),
                  WParagraf(
                    teks:
                        'Berdasarkan sifatnya lipid dapat digolongkan menjadi '
                        'dua kelompok utama yakni lipid yang dapat disafonifkasi '
                        '(disabunkan) dan lipid yang tidak dapat disaponifikasi '
                        '(disabunkan). Golongan lipid pertama dapat dihidrolisis '
                        'dengan alkali dan panas sehingga terbentuk garam asam-asam '
                        'lemak dan komponen molekul lainnya, salah satu '
                        'contohnya triasilgliserol. Golongan kedua merupakan '
                        'lipid yang tidak dpat dihidrolisi oleh basa, contohnya '
                        'senyawa golongan steroid',
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
                                imageUrl: 'assets/images/gambar4.6.png',
                                dialogHeight: 250,
                              ),
                            );
                          },
                          child: Image.asset('assets/images/gambar4.6.png')),
                      WGambarTitle(
                        text: 'Gambar 4.6. Klasifikasi Lipid',
                        margin: const EdgeInsets.only(top: 4),
                      )
                    ],
                  ))
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '31'),
        ],
      ),
    );
  }
}
