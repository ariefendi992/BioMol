import 'package:bio_mol/ui/widgets/widget_dialog_image.dart';
import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';

class GolonganKarbohidratBagian1 extends StatelessWidget {
  const GolonganKarbohidratBagian1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(bottom: 50),
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 6),
                  Text(
                    'Contoh Stereoisomer :',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontFamily: 'Caveat Brush'),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Center(
                          child: CImagetAsset(
                            imageName: 'assets/images/gambar1.9.png',
                            width: MediaQuery.of(context).size.width / 1.5,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'Gambar 1.9. Stereoisomer Glukosa',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontFamily: 'Caveat Brush',
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Dua jenis gula yang memiliki '
                                    'perbedaan pada satu atom karbon spesifik '
                                    'dinamakan dengan ',
                                style: blackTextStyle.copyWith(
                                    fontSize: 16,
                                    fontFamily: 'Caveat Brush',
                                    height: 1),
                              ),
                              WidgetSpan(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: kBlueColor1,
                                    borderRadius:
                                        BorderRadius.circular(defaultRadius),
                                  ),
                                  child: Text(
                                    ' epimer',
                                    style: blackTextStyle.copyWith(
                                        fontSize: 16,
                                        fontFamily: 'Caveat Brush',
                                        height: 1.1),
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: '.',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                  fontFamily: 'Caveat Brush',
                                ),
                              ),
                            ],
                          ),
                        ),
                        CImagetAsset(
                          imageName: 'assets/images/gambar1.10.crop.png',
                          width: MediaQuery.of(context).size.width / 1.380,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              'Gambar 1.10. Contoh Epimer Monosakarida',
                              style: blackTextStyle.copyWith(
                                fontSize: 14,
                                fontFamily: 'Caveat Brush',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  WParagraf(
                    teks: 'Selain proyeksi Fischer, monosakarida juga dapat '
                        'digambarkan dengan proyeksi Haworth dalam bentuk '
                        'piranosa atau furanosa. Aldosa biasanya membentuk '
                        'struktur molekul piranosa.',
                    fontFamily: 'Caveat Brush',
                    textIndent: false,
                    fontSize: 16,
                  ),
                  const SizedBox(height: 6),
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
                                      imageUrl:
                                          'assets/images/gambar1.11.crop.png',
                                    );
                                  },
                                );
                              },
                              child: CImagetAsset(
                                imageName: 'assets/images/gambar1.11.crop.png',
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            Text(
                              'Gambar 1.11. Formula Proyeksi Fischer dan Haworth D-Glukosa',
                              style: blackTextStyle.copyWith(
                                fontSize: 14,
                                fontFamily: 'Caveat Brush',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          children: [
                            WParagraf(
                              teks:
                                  'Piranosa merupakan derivat senyawa heterosiklik '
                                  'piran. D-glukosa dapat membentuk D-glukopiranosa '
                                  'dengan dua bentuk isomer yaitu α dan β.',
                              textAlign: TextAlign.center,
                              textIndent: false,
                              fontFamily: 'Caveat Brush',
                              fontSize: 16,
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '8')
        ],
      ),
    );
  }
}
