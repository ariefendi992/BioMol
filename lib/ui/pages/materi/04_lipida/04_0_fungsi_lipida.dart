import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class FungsiLipidaPage extends StatelessWidget {
  const FungsiLipidaPage({super.key});

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
                        Image.asset('assets/images/gambar4.14.png'),
                        WGambarTitle(
                          text: 'Gambar 4.14. Contoh Steroid',
                          margin: const EdgeInsets.only(top: 2),
                        )
                      ],
                    ),
                  ),
                  WTitleSubtitle(
                    title: '4. Fungsi Lipida',
                    margin: const EdgeInsets.only(top: 16),
                  ),
                  WTitleSubtitle(
                    title: 'a. Membran Plasma',
                    isTitle: false,
                  ),
                  WParagraf(
                    teks:
                        'Membran plasma mempunyai fungsi, sifat, struktur, dan '
                        'sistem transport yang sangat penting bagi proses hidup '
                        'suatu sel. ',
                    textIndent: false,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Flexible(
                        child: WParagraf(
                          teks:
                              'Fungsi membran plasma yaitu untuk: membungkus sel, '
                              'membatasi perluasan sel, sebagai filter yang sangat '
                              'selektif, merupakan alat untuk transport aktif, '
                              'mengontrol masuknya nutrien dan keluarnya hasil '
                              'metabolisme, menjaga perbedaan konsentrasi ion '
                              'di dalam dan di luar sel, serta sebagai sensor '
                              'untuk sinyal-sinyal yang terdapat di luar sel.',
                          textIndent: false,
                          backgroundColor: kYellow1,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Column(
                          children: [
                            Image.asset('assets/images/gambar4.14.1.png'),
                          ],
                        ),
                      )
                    ],
                  ),
                  WTitleSubtitle(
                    title: 'b. Cadangan Energi',
                    margin: const EdgeInsets.only(top: 12, bottom: 6),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            Image.asset('assets/images/gambar4.14.2.png')
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        flex: 3,
                        child: WParagraf(
                          teks:
                              'Trigliserida, yang disimpan dalam jaringan adiposa, '
                              'adalah bentuk utama cadangan energi baik dalam '
                              'hewan maupun tumbuhan dan secara kimiawi lemak dan '
                              'minyak adalah trigliserida',
                          textIndent: false,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '38'),
        ],
      ),
    );
  }
}
