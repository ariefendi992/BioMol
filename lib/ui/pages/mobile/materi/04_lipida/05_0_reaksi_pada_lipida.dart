import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class ReaksiPadaLipidaPage extends StatelessWidget {
  const ReaksiPadaLipidaPage({super.key});

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
                    title: 'c. Pensinyalan',
                    isTitle: false,
                    // margin: const EdgeInsets.only(bottom: 6),
                  ),
                  RichText(
                    textAlign: justify,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'pensinyalan lipid adalah bagian penting dari pensinyalan sel. ',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Pensinyalan lipid dapat terjadi melalui aktivasi '
                              'pasangan protein G atau reseptor nuklir, dan '
                              'anggota beberapa kategori lipid yang berbeda telah '
                              'diidentifikasi sebagai molekul sinyal dan kurir sel. ',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                            backgroundColor: kYellowColor2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Flexible(
                        flex: 3,
                        child: WParagraf(
                          teks: 'Sfingosina-1-fosfat, suatu '
                              'sfingolipid yang diturunkan dari seramida yang merupakan '
                              'molekul kurir potensial yang terlibat dalam mengatur '
                              'mobilisasi kalsium, hormon steroid seperti sebagai '
                              'estrogen, testosteron dan kortisol, yang memodulasi '
                              'sejumlah fungsi seperti reproduksi, metabolisme dan '
                              'tekanan darah; serta oksisterol seperti 25-hidroksikolesterol '
                              'yang merupakan reseptor liver X agonis.',
                          textIndent: false,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        flex: 2,
                        child: Container(
                          child: Image.asset('assets/images/gambar4.15.1.png'),
                        ),
                      ),
                    ],
                  ),
                  WTitleSubtitle(
                    title: '5. Reaksi pada Lipida',
                    margin: const EdgeInsets.only(top: 16),
                  ),
                  WTitleSubtitle(
                    title: 'a. Reaksi Saponifikasi atau penyabunan',
                    isTitle: false,
                  ),
                  WParagraf(
                    teks:
                        'Reaksi Saponifikasi atau penyabunan adalah reaksi hidrolisis '
                        'lemak/minyak dengan menggunakan basa kuat seperti NaOH '
                        'atau KOH sehingga menghasilkan gliserol dan garam asam '
                        'lemak atau sabun.',
                    textIndent: false,
                  ),
                  const SizedBox(height: 12),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset('assets/images/gambar4.15.png'),
                        ),
                        WGambarTitle(
                          text: 'Gambar 4.15. Reaksi Saponifikasi',
                          margin: const EdgeInsets.only(top: 2),
                        )
                      ],
                    ),
                  ),
                  WTitleSubtitle(
                    title: 'a. Reaksi Saponifikasi atau penyabunan',
                    isTitle: false,
                    margin: const EdgeInsets.only(top: 12),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset('assets/images/gambar4.16.png'),
                        ),
                        WGambarTitle(
                          text: 'Gambar 4.16. Reaksi Pembentukan Lemak',
                          margin: const EdgeInsets.only(top: 2),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '36'),
        ],
      ),
    );
  }
}
