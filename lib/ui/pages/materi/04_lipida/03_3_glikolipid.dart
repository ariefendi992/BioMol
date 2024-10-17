import 'package:bio_mol/ui/widgets/widget_dialog_image.dart';
import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class GlikolipidPage extends StatelessWidget {
  const GlikolipidPage({super.key});

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
                    title: '2) Glikolipid',
                    isSubSubTitle: true,
                    isTitle: false,
                  ),
                  const SizedBox(height: 6),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 2,
                        child: RichText(
                          textAlign: justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'Glikolipid adalah senyawa asam lemak dengan '
                                    'karbohidrat dan mengandung nitrogen',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 14,
                                  backgroundColor: kGreenColor2,
                                ),
                              ),
                              TextSpan(
                                text: ' tetapi tidak mengandung asam fosfat. '
                                    'Glikosfingolipid adalah sekelompok molekul '
                                    'beraneka ragam yang tersusun dari satu residu '
                                    'gula atau lebih yang berikatan dengan basa '
                                    'sfingoid melalui ikatan glikosidik. Contohnya '
                                    'adalah glikosfingolipid sederhana dan kompleks '
                                    'seperti serebrosida dan gangliosida. ',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: 'Sfingolipid',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 14,
                                  backgroundColor: kGreenColor2,
                                ),
                              ),
                              TextSpan(
                                text: ' adalah jenis lemak kedua yang ',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'ditemukan di dalam membran sel, khususnya '
                                    'pada sel saraf dan jaringan otak',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 14,
                                  backgroundColor: kGreenColor2,
                                ),
                              ),
                              TextSpan(
                                text: '. Lemak ini tidak mengandung gliserol, '
                                    'tetapi dapat menahan dua gugus alkohol '
                                    'pada bagian tengah kerangka amina.',
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
                            Image.asset('assets/images/gambar4.12.png'),
                            WGambarTitle(
                              text: 'Gambar 4.12. Struktur Glikolipid',
                              margin: const EdgeInsets.only(top: 2),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  WParagraf(
                    teks: 'Pada membran darah manusia, jenis karbohidrat '
                        'yang tersubtitusi pada struktur spingolipid '
                        'menentukan golongan darah seseorang.',
                    textIndent: false,
                    fontSize: 14,
                  ),
                  const SizedBox(height: 6),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: GestureDetector(
                              onDoubleTap: () {
                                showDialog(
                                  context: context,
                                  builder: (_) => WDialogImage(
                                      imageUrl: 'assets/images/gambar4.13.png'),
                                );
                              },
                              child:
                                  Image.asset('assets/images/gambar4.13.png')),
                        ),
                        WGambarTitle(
                          text:
                              'Gambar 4.13. Glikospingolipid Penyusun Golongan Darah O, A dan B',
                          margin: const EdgeInsets.only(top: 4),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  WTitleSubtitle(
                    title: 'c. Steroid',
                    isTitle: false,
                  ),
                  RichText(
                    textAlign: justify,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Steroida merupakan lipid yang tidak dapat '
                              'disaponifikasi. Steroid Adalah turunan lemak '
                              'yang tidak mengandung gugus asam lemak dan '
                              'gugus ester. ',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Steroid merupakan turunan sterol yang memiliki '
                              'kandungan kolesterol',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                            backgroundColor: kGreenColor2,
                          ),
                        ),
                        TextSpan(
                          text: '. Hormon steroid memasuki aliran darah menuju '
                              'jaringan target. Ketiga steroid memasuki sel, '
                              'steroid akan berikatan dengan reseptor protein '
                              'spesifik pada nukleus sehingga akan mengubah '
                              'ekspresi gen dan metabolisme.',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                          ),
                        ),
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
