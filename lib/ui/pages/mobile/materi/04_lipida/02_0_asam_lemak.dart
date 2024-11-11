import 'package:bio_mol/ui/widgets/widget_dialog_image.dart';
import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class AsamLemakPage extends StatelessWidget {
  const AsamLemakPage({super.key});

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
                vertical: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: WGambarTitle(
                      text: 'Tabel  4.1. Contoh  Asam Lemak Jenuh',
                      margin: const EdgeInsets.only(bottom: 4),
                    ),
                  ),
                  GestureDetector(
                    onDoubleTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => WDialogImage(
                            imageUrl: 'assets/images/tabel4.1.png'),
                      );
                    },
                    child: Image.asset(
                      'assets/images/tabel4.1.png',
                    ),
                  ),
                  const SizedBox(height: 16),
                  WTitleSubtitle(
                    title: 'b. Asam Lemak Tak Jenuh',
                    isTitle: false,
                  ),
                  const SizedBox(height: 6),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: WParagraf(
                          teks: 'Asam lemak tak jenuh adalah asam lemak yang '
                              'mengandung ikatan rangkap dan dapat terjadi dalam '
                              'konfigurasi cis atau trans.',
                          textIndent: false,
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
                                        imageUrl:
                                            'assets/images/gambar4.4.png'),
                                  );
                                },
                                child:
                                    Image.asset('assets/images/gambar4.4.png')),
                            WGambarTitle(
                              text:
                                  'Gambar 4.4. Struktur Asam Lemak  Tak Jenuh',
                              margin: const EdgeInsets.only(top: 2),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: WGambarTitle(
                      text: 'Tabel  4.2. Contoh  Asam Lemak Tak Jenuh',
                      margin: const EdgeInsets.only(top: 12, bottom: 4),
                    ),
                  ),
                  GestureDetector(
                    onDoubleTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => WDialogImage(
                            imageUrl: 'assets/images/tabel4.2.png'),
                      );
                    },
                    child: Image.asset('assets/images/tabel4.2.png'),
                  )
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '30'),
        ],
      ),
    );
  }
}
