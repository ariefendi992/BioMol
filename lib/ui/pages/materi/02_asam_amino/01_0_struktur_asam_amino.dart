import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class StrukturAsamAminoPage extends StatelessWidget {
  const StrukturAsamAminoPage({super.key});

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
                    title: '1. Asam Amino',
                    margin: const EdgeInsets.only(top: 6),
                  ),
                  WTitleSubtitle(
                    title: 'a. Struktur Asam Amino',
                    isTitle: false,
                  ),
                  WParagraf(
                    teks: 'Asam amino adalah asam karboksilat yang '
                        'mempunyai gugus amino. Gugus amino terikat pada atom '
                        'karbon alpha dari posisi gugus COOH. Tiap asam '
                        'amino tersusun atas gugus R yang berbeda dan '
                        'struktur gugus R menentukan identitas asam amino '
                        'dan sifat-sifat khasnya.',
                    textIndent: false,
                    textHeight: 1,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar2.1.png',
                              width: 140,
                            ),
                            WGambarTitle(
                                text: 'Gambar 2.1. Struktur Asam Amino')
                          ],
                        ),
                      ),
                      const SizedBox(width: 6),
                      Flexible(
                        flex: 2,
                        child: Column(
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar2.2.png',
                              width: MediaQuery.of(context).size.width,
                            ),
                            WGambarTitle(
                                text:
                                    'Gambar 2.2. Struktur alfa, beta & gama Asam Amino')
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Berdasarkan jumlah asam amino penyusunnya, ',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            height: 1,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text:
                              'rantai asam amino dibagi menjadi Peptida dan protein',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            backgroundColor: kRedColor1,
                            height: 1,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text:
                              '.  Peptida terdiri dari asam amino yang jumlahnya '
                              'kurang dari 50 (contohnya: Dipeptida, terdiri '
                              'dari 2 asam amino, Tripeptida, terdiri dari 3 '
                              'asam amino dan Polipeptida, terdiri lebih dari '
                              '10 asam amino). Sedangkan Protein. Terdiri dari '
                              'asam amino yang jumlahnya lebih dari 50 (biasanya '
                              'protein terdiri dari 100 – 10000 asam amino).',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            height: 1,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Column(
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar2.3.png',
                              width: 200,
                            ),
                            WGambarTitle(
                              text: 'Gambar 2.3. Pembentukan Ikatan Peptida',
                              margin: const EdgeInsets.only(top: 4),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 6),
                      Flexible(
                          flex: 3,
                          child: WParagraf(
                            teks: 'Untuk membentuk '
                                'peptida dan protein, asam amino akan '
                                'membentuk ikatan peptida dengan molekul '
                                'asam amino lainnya. Peptida terbentuk karena '
                                'adanya ikatan antara amida pada gugus amino '
                                'dengan gugus hidroksil pada molekul lainnya '
                                'melalui proses kondensasi. Di lain pihak, '
                                'pemecahan ikatan peptida dinamakan dengan '
                                'hidrolisis.',
                            textIndent: false,
                            textHeight: 1,
                          ))
                    ],
                  ),
                  const SizedBox(height: 16),
                  WParagraf(
                    teks:
                        'Pada pembentukan protein ada asam amino yang berfungsi '
                        'sebagai N-terminus dan C-terminus. Asam amino yang '
                        'masih memiliki gugus amino dalam rangkaian protein '
                        'dinamakan N-terminus sedangkan yang masih memiliki '
                        'gugus karboksilat dinamakan Cterminus. Berdasarkan '
                        'konvensi, penggambaran peptida dan protein selalu '
                        'dimulai dengan N-terminus kemudian diakhiri dengan '
                        'C-terminus.',
                    textIndent: false,
                    textHeight: 1,
                  ),
                  const SizedBox(height: 12),
                  Center(
                    child: Column(
                      children: [
                        CImagetAsset(
                          imageName: 'assets/images/gambar2.4.png',
                          width: MediaQuery.of(context).size.width / 1.5,
                        ),
                        WGambarTitle(
                          text:
                              'Gambar 2.4. N-terminus dan C-terminus pada molekul dipeptida',
                          margin: const EdgeInsets.only(top: 4),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '16'),
        ],
      ),
    );
  }
}
