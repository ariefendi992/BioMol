import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_drawer.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:flutter/material.dart';

class DaftarPustakaPageMobile extends StatelessWidget {
  const DaftarPustakaPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final paddingTop = MediaQuery.of(context).padding.top;
    final appBar = PreferredSize(
        preferredSize: Size.fromHeight(44),
        child: AppBar(
          title: Text('Main Menu'),
        ));
    final screenHeight = height - appBar.preferredSize.height - paddingTop;
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: ((didpop, _) {
        if (didpop) {
          return;
        }
        Navigator.pushNamedAndRemoveUntil(
            context, '/daftarMateri', (_) => false);
      }),
      child: Scaffold(
        drawer: WDrawer(),
        appBar: appBar,
        body: Stack(
          children: [
            Container(
              height: screenHeight,
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    height: screenHeight * 0.1,
                    // color: kRedColor1,
                    child: Center(
                      child: Text(
                        'DAFTAR PUSTAKA',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.9,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WParagraf(
                              teks: '1.',
                              textHeight: 1.12,
                              textIndent: false,
                              fontSize: 16,
                            ),
                            const SizedBox(width: 4),
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Kumar, A. (2021), Biokimia: Dasar dan Aplikasi. '
                                          'Jakarta: Penerbit Biomedika.',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 16,
                                        fontFamily: 'Caveat Brush',
                                        height: 1.12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 6),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WParagraf(
                              teks: '2.',
                              textHeight: 1.12,
                              textIndent: false,
                              fontSize: 16,
                            ),
                            const SizedBox(width: 4),
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Wahyuningsih, S. (2020). Molekul-Molekul '
                                          'Biokimia. Yogyakarta: Penerbit: Akamedika',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 16,
                                        fontFamily: 'Caveat Brush',
                                        height: 1.12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 6),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WParagraf(
                              teks: '3.',
                              textHeight: 1.12,
                              textIndent: false,
                              fontSize: 16,
                            ),
                            const SizedBox(width: 4),
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Sari, R. (2019). Pengantar Biokimia, Bandung: '
                                          'Penerbit Cendekia.',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 16,
                                        fontFamily: 'Caveat Brush',
                                        height: 1.12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 6),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WParagraf(
                              teks: '4.',
                              textHeight: 1.12,
                              textIndent: false,
                              fontSize: 16,
                            ),
                            const SizedBox(width: 4),
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Suharso, B. (2022). Karbohidrat dan '
                                          'Proteomika. Surabaya: Penerbit Ilmu Pengetahuan.',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 16,
                                        fontFamily: 'Caveat Brush',
                                        height: 1.12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 6),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WParagraf(
                              teks: '5.',
                              textHeight: 1.12,
                              textIndent: false,
                              fontSize: 16,
                            ),
                            const SizedBox(width: 4),
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Setiawan, J. (2023). Asam Amino dan '
                                          'Protein dalam Kehidupan Sehari-hari. '
                                          'Malang: Penerbit Universitas Negeri Malang.',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 16,
                                        fontFamily: 'Caveat Brush',
                                        height: 1.12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 6),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WParagraf(
                              teks: '6.',
                              textHeight: 1.12,
                              textIndent: false,
                              fontSize: 16,
                            ),
                            const SizedBox(width: 4),
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Yani, R. (2021). Lipid dan Asam Nukleat: '
                                          'Struktur dan Fungsi. Semarang: Penerbit Science.',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 16,
                                        fontFamily: 'Caveat Brush',
                                        height: 1.12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 6),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WParagraf(
                              teks: '7.',
                              textHeight: 1.12,
                              textIndent: false,
                              fontSize: 16,
                            ),
                            const SizedBox(width: 4),
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Andini, T. (2022). Pengantar Kimia Organik. '
                                          'Jakarta: Penerbit Erlangga.',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 16,
                                        fontFamily: 'Caveat Brush',
                                        height: 1.12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            WNomorHalaman(nomorHalaman: '39')
          ],
        ),
      ),
    );
  }
}
