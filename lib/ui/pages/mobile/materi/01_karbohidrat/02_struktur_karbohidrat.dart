import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class StrukturKarbohidratPage extends StatelessWidget {
  const StrukturKarbohidratPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6),
                    WTitleSubtitle(title: '2. Struktur Karbohidrat'),
                    WParagraf(
                      teks: 'Struktur gula atau karbohidrat dapat digambarkan '
                          'dalam berbagai bentuk mulai dari rantai karbon '
                          'terbuka seperti yang digambarkan pada proyeksi '
                          'Fischer atau bentuk rantai tertutup seperti yang '
                          'digambarkan pada proyeksi Howarth.',
                      textIndent: false,
                      fontFamily: 'Caveat Brush',
                      fontSize: 16,
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            children: [
                              CImagetAsset(
                                imageName: 'assets/images/gambar1.4.png',
                                width: 220,
                              ),
                              SizedBox(height: 6),
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Gambar 1.4. Glukosa (proyeksi Fischer). '
                                          'Gula atau karbohidrat yang memiliki '
                                          'gugus fungsi aldehid disebut dengan ',
                                      style: blackTextStyle.copyWith(
                                        fontFamily: 'Caveat Brush',
                                        fontSize: 14,
                                      ),
                                    ),
                                    WidgetSpan(
                                      child: Container(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 2),
                                        decoration: BoxDecoration(
                                            color: kBlueColor1,
                                            borderRadius:
                                                BorderRadius.circular(18)),
                                        child: Text(
                                          'aldosa',
                                          style: blackTextStyle.copyWith(
                                            fontSize: 14,
                                            fontFamily: 'Caveat Brush',
                                            height: 1.2,
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '.',
                                      style: blackTextStyle.copyWith(
                                        fontFamily: 'Caveat Brush',
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 6),
                        Flexible(
                          child: Column(
                            children: [
                              CImagetAsset(
                                imageName: 'assets/images/gambar1.5.crop.png',
                                width: 140,
                              ),
                              SizedBox(height: 6),
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Gambar 1.5. Fruktosa (Proyeksi Fischer). '
                                          'Contoh struktur karbohidrat yang '
                                          'memiliki gugus fungsi utama keton '
                                          'disebut dengan ',
                                      style: blackTextStyle.copyWith(
                                        fontFamily: 'Caveat Brush',
                                        fontSize: 14,
                                        height: 1,
                                      ),
                                    ),
                                    WidgetSpan(
                                      child: Container(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 2),
                                        decoration: BoxDecoration(
                                            color: kBlueColor1,
                                            borderRadius:
                                                BorderRadius.circular(18)),
                                        child: Text(
                                          'ketosa',
                                          style: blackTextStyle.copyWith(
                                            fontSize: 14,
                                            fontFamily: 'Caveat Brush',
                                            height: 1.2,
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '.',
                                      style: blackTextStyle.copyWith(
                                        fontFamily: 'Caveat Brush',
                                        fontSize: 14,
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
                    SizedBox(height: 16),
                    WParagraf(
                      teks: 'Atom C pada struktur karbohidrat memiliki '
                          'kerangka tetrahedral yang membentuk sudut 105,9  '
                          'menyebabkan molekul karbohidrat cukup sulit '
                          'berbentuk rantai lurus. Berdasarkan kerangka '
                          'tetrahedral inilah, molekul polihidroksi ini lebih '
                          'stabil dalam struktur siklik.',
                      fontFamily: 'Caveat Brush',
                      fontSize: 16,
                      textIndent: false,
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CImagetAsset(
                                imageName:
                                    'assets/images/karbohidrat3.crop.png',
                                width: 100,
                              ),
                              SizedBox(height: 6),
                              WParagraf(
                                teks: '(a) Glukosa',
                                textAlign: TextAlign.center,
                                fontSize: 14,
                                fontFamily: 'Caveat Brush',
                                textIndent: false,
                              )
                            ],
                          ),
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CImagetAsset(
                                imageName: 'assets/images/fruktosa.crop.png',
                                width: 250,
                              ),
                              SizedBox(height: 6),
                              WParagraf(
                                teks: '(b) Fruktosa',
                                textAlign: TextAlign.center,
                                fontSize: 14,
                                fontFamily: 'Caveat Brush',
                                textIndent: false,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 80, top: 6),
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 5),
                      alignment: Alignment.center,
                      child: WParagraf(
                        teks: 'Gambar 1.6. Glukosa dan Fruktosa dengan bentuk '
                            'proyeksi Howarth (Struktur Siklik)',
                        fontFamily: 'Caveat Brush',
                        textIndent: false,
                        fontSize: 14,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '6')
        ],
      ),
    );
  }
}
