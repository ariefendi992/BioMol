import 'package:bio_mol/ui/widgets/widget_dialog_image.dart';
import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class GolonganKarbohidratBagian3 extends StatelessWidget {
  const GolonganKarbohidratBagian3({super.key});

  @override
  Widget build(BuildContext context) {
    Widget disakarida() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WTitleSubtitle(
            title: '1) Disakarida',
            isTitle: false,
            isSubSubTitle: true,
          ),
          WParagraf(
            teks: 'Disakarida adalah karbohidrat yang terdiri '
                'dari 2 satuan monosakarida Beberapa disakarida yang '
                'sering dijumpai: Maltosa, Laktosa, Sukrosa.',
            fontSize: 16,
          ),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    GestureDetector(
                      onDoubleTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return WDialogImage(
                                imageUrl: 'assets/images/gambar1.14.png');
                          },
                        );
                      },
                      child: CImagetAsset(
                        imageName: 'assets/images/gambar1.14.png',
                        width: 150,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Gambar 1.14. Struktur Sukrosa',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontFamily: 'Caveat Brush',
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              const SizedBox(width: 6),
              Flexible(
                flex: 2,
                child: Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Sukrosa merupakan gula yang berasal '
                                'dari tebu, bit, madu lebah, buah nanas dan wortel. '
                                'Dalam kehidupan sehari-hari sukrosa dikenal dengan '
                                'gula pasir atau gula inversi. Gula inversi adalah '
                                'campuran D-glukosa dan D-fruktosa yang diperoleh '
                                'dengan hidrolisis asam atau enzimatik dari sukrosa. '
                                'Adanya fruktosa bebas maka ',
                            style: blackTextStyle.copyWith(
                              fontFamily: 'Caveat Brush',
                              height: 1.1,
                            ),
                          ),
                          TextSpan(
                            text: 'gula inversi lebih manis daripada sukrosa.',
                            style: blackTextStyle.copyWith(
                                fontFamily: 'Caveat Brush',
                                height: 1.1,
                                backgroundColor: kBlueColor1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Maltosa adalah suatu disakarida dan '
                                'merupakan hasil dari hidrolisis parsial '
                                'tepung (amilum) dan lebih mudah dicerna '
                                'oleh tubuh. ',
                            style: blackTextStyle.copyWith(
                              fontFamily: 'Caveat Brush',
                              height: 1.1,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Maltosa mudah larut dalam air dan mempunyai rasa lebih manis daripada laktosa',
                            style: blackTextStyle.copyWith(
                              fontFamily: 'Caveat Brush',
                              backgroundColor: kBlueColor1,
                              height: 1.1,
                            ),
                          ),
                          TextSpan(
                            text: '. Maltosa digunakan dalam makanan bayi '
                                'dan susu bubuk beragi (malted milk). '
                                'Satu molekul maltosa terhidrolisis '
                                'menjadi dua molekul glukosa.',
                            style: blackTextStyle.copyWith(
                              fontFamily: 'Caveat Brush',
                              height: 1.1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 6),
              Flexible(
                child: Column(
                  children: [
                    GestureDetector(
                      onDoubleTap: () {
                        showDialog(
                          context: context,
                          builder: (_) {
                            return WDialogImage(
                                imageUrl: 'assets/images/gambar1.15.png');
                          },
                        );
                      },
                      child: CImagetAsset(
                        imageName: 'assets/images/gambar1.15.png',
                        width: 140,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Gambar 1.15. Struktur Maltosa',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontFamily: 'Caveat Brush',
                        height: 1,
                      ),
                      textAlign: TextAlign.center,
                    )
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
                flex: 2,
                child: Column(
                  children: [
                    GestureDetector(
                      onDoubleTap: () {
                        showDialog(
                            context: context,
                            builder: (_) {
                              return WDialogImage(
                                  imageUrl: 'assets/images/gambar1.16.png');
                            });
                      },
                      child: CImagetAsset(
                        imageName: 'assets/images/gambar1.16.png',
                        width: 130,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Gambar 1.16. Struktur Rafinosa',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontFamily: 'Caveat Brush',
                        height: 1,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              const SizedBox(width: 6),
              Flexible(
                flex: 3,
                child: Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Laktosa adalah komponen utama yang '
                                'terdapat pada air susu ibu (ASI) '
                                'dan susu sapi. ',
                            style: blackTextStyle.copyWith(
                              fontFamily: 'Caveat Brush',
                              height: 1.1,
                            ),
                          ),
                          TextSpan(
                            text: 'Kandungan laktosa pada (ASI) 4-7% dan '
                                'pada susu sapi 4-5%',
                            style: blackTextStyle.copyWith(
                              fontFamily: 'Caveat Brush',
                              backgroundColor: kBlueColor1,
                              height: 1.1,
                            ),
                          ),
                          TextSpan(
                            text: '. Laktosa tersusun dari molekul '
                                'β-D-galaktosa dan α-D-glukosa yang '
                                'dihubungkan oleh ikatan 1,4-β.',
                            style: blackTextStyle.copyWith(
                              fontFamily: 'Caveat Brush',
                              height: 1.1,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      );
    }

    Widget trisakarida() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WTitleSubtitle(
            title: '2) Trisakarida',
            isTitle: false,
            isSubSubTitle: true,
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  children: [
                    GestureDetector(
                      onDoubleTap: () {
                        showDialog(
                            context: context,
                            builder: (_) {
                              return WDialogImage(
                                  imageUrl: 'assets/images/gambar1.17.png');
                            });
                      },
                      child: CImagetAsset(
                        imageName: 'assets/images/gambar1.17.png',
                        width: 150,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Gambar 1.17. Struktur Rafinosa',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontFamily: 'Caveat Brush',
                        height: 1,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              const SizedBox(width: 6),
              Flexible(
                flex: 3,
                child: Column(
                  children: [
                    WParagraf(
                      teks: 'Rafinosa terdiri dari 3 monosakarida yaitu '
                          'galaktosa, glukosa, fruktosa. Atom C1  galaktosa '
                          'berikatan dengan C6 glukosa dan C1  glukosa '
                          'berikatan dengan C2 pada fruktosa sehingga '
                          'rafinosa tidak mempunyai gugus -OH glikosidik '
                          'dan bersifat tidak mereduksi. Rafinosa terdapat '
                          'pada bit dan tepung biji kapas.',
                      textIndent: false,
                      textHeight: 1.1,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      );
    }

    return Container(
      width: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(bottom: 50),
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  disakarida(),
                  const SizedBox(height: 14),
                  trisakarida()
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '10'),
        ],
      ),
    );
  }
}
