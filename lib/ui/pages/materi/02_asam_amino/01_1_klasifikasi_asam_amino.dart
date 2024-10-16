import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class KlasifikasiAsamAminoPage extends StatelessWidget {
  const KlasifikasiAsamAminoPage({super.key});

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
                    title: 'b. Klasifikasi Asam Amino',
                  ),
                  WParagraf(
                    teks:
                        'Berdasarkan rantai samping penyusunnya (R), asam amino '
                        'diklasifikasikan menjadi 4 kelas yaitu:',
                    textHeight: 1.4,
                    textIndent: false,
                  ),
                  WTitleSubtitle(
                    title: '1). Gugus R Nonpolar atau hidrofobik',
                    isTitle: false,
                    isSubSubTitle: true,
                    margin: const EdgeInsets.only(top: 6, bottom: 12),
                  ),
                  Center(
                    child: Column(
                      children: [
                        CImagetAsset(
                          imageName: 'assets/images/gambar2.5.png',
                          width: MediaQuery.of(context).size.width / 1.3,
                        ),
                        WGambarTitle(
                          text:
                              'Gambar 2.5. Struktur Asam Amino Nonpolar, Alifatik',
                          margin: const EdgeInsets.only(top: 2, bottom: 16),
                        ),
                        CImagetAsset(
                          imageName: 'assets/images/gambar2.6.png',
                          width: MediaQuery.of(context).size.width / 1.3,
                        ),
                        WGambarTitle(
                          text:
                              'Gambar 2.6. Struktur Asam Amino Nonpolar, Aromatik',
                          margin: const EdgeInsets.only(top: 2, bottom: 16),
                        ),
                      ],
                    ),
                  ),
                  WTitleSubtitle(
                    title: '2). Gugus R netral (tidak bermuatan) polar',
                    isTitle: false,
                    isSubSubTitle: true,
                    margin: const EdgeInsets.only(top: 6, bottom: 12),
                  ),
                  Center(
                    child: Column(
                      children: [
                        CImagetAsset(
                          imageName: 'assets/images/gambar2.7.png',
                          width: MediaQuery.of(context).size.width / 1.3,
                        ),
                        WGambarTitle(
                          text: 'Gambar 2.7. Struktur Asam Amino Netral',
                          margin: const EdgeInsets.only(top: 2),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '17')
        ],
      ),
    );
  }
}
