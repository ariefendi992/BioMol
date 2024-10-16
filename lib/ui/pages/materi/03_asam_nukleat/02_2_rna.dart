import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class RNAPage extends StatelessWidget {
  const RNAPage({super.key});

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
                    title: 'b. RNA',
                    isTitle: false,
                    margin: const EdgeInsets.only(top: 12, bottom: 6),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'RNA memiliki struktur yang mirip dengan DNA '
                              'tetapi memiliki dua perbedaan. Pertama, molekul ',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text: 'RNA mengandung gula ribosa',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                            height: 1.4,
                            backgroundColor: kBlueColor1,
                          ),
                        ),
                        TextSpan(
                          text: ' dimana karbon nomor 2 berikatan dengan gugus '
                              'hidroksil, sedangkan pada struktur DNA gugus '
                              'hidroksil tersebut diganti dengan atom hidrogen. '
                              'Kedua, ',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text: 'molekul RNA mengandung basa nitrogen urasil',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                            height: 1.4,
                            backgroundColor: kBlueColor1,
                          ),
                        ),
                        TextSpan(
                          text:
                              ' sedangkan DNA mengandung timin. Jika struktur '
                              'tiga dimensi DNA adalah double heliks, maka '
                              'struktur RNA adalah rantai tunggal.',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
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
                            Image.asset(
                              'assets/images/gambar3.11.png',
                            ),
                            WGambarTitle(
                              text: 'Gambar 3.11. Struktur Double Heliks DNA',
                              margin: const EdgeInsets.only(top: 4),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/gambar3.12.png',
                            ),
                            WGambarTitle(
                              text: 'Gambar 3.12. Struktur Rantai Tunggal RNA',
                              margin: const EdgeInsets.only(top: 4),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'Tiga jenis RNA utama yang terlibat dalam '
                                    'sintesis protein yaitu: ',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: 'mRNA (messenger-RNA)',
                                style: blackTextStyle.copyWith(
                                    fontFamily: caveatBrush,
                                    fontSize: 14,
                                    backgroundColor: kBlueColor1),
                              ),
                              TextSpan(
                                text: ', disintesis dalam inti sel pada proses '
                                    'transkripsi. Berfungsi sebagai pembawa '
                                    'informasi genetik dari DNA ke ribosom; ',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: 'rRNA (ribosomal-RNA)',
                                style: blackTextStyle.copyWith(
                                    fontFamily: caveatBrush,
                                    fontSize: 14,
                                    backgroundColor: kBlueColor1),
                              ),
                              TextSpan(
                                text:
                                    ', bagian terbanyak dari RNA dalam sel (80%). '
                                    'Berfungsi bertanggung jawab atas stabilitas '
                                    'm-RNA. Komponen ribosom yang bertanggung '
                                    'jawab pada sintesis protein. rRNA mengikat '
                                    'beberapa jenis protein untuk membentuk '
                                    'ribosom; dan ',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: 'tRNA (transfer-RNA)',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ', berfungsi untuk mengangkut (transport) '
                                    'asam amino spesifik ke ribosom untuk proses '
                                    'sintesis protein (melakukan translasi '
                                    'informasi RNA menjadi polimer asam amino).',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Column(
                          children: [
                            const SizedBox(height: 8),
                            Image.asset('assets/images/gambar3.13.png'),
                            WGambarTitle(
                              text: 'Gambar 3.13. Struktur t-RNA',
                              margin: const EdgeInsets.only(top: 4),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '27'),
        ],
      ),
    );
  }
}
