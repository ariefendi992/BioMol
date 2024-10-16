import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bio_mol/cubit/boolean_cubit.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class PengertianKarbohidratPage extends StatelessWidget {
  const PengertianKarbohidratPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget gambar1() {
      return BlocBuilder<BooleanCubit, bool>(
        builder: (context, state) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment:
                !state ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<BooleanCubit>().toggle();
                      },
                      child: CImagetAsset(
                        imageName: 'assets/images/karbohidrat1.crop.png',
                        width: 150,
                      ),
                    ),
                    SizedBox(height: 4),
                    WParagraf(
                      teks: 'Gambar 1.1. Makanan  yang Mengandung Karbohidrat',
                      fontFamily: 'Caveat Brush',
                      textIndent: false,
                      fontSize: 14,
                      textHeight: 1,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              SizedBox(width: 4),
              state
                  ? Flexible(
                      child: WParagraf(
                        teks: 'Karbohidrat diproduksi di alam oleh '
                            'tumbuhan melalui bantuan cahaya matahari dan '
                            'disimpan dalam bentuk amilum (melalui proses fotosintesis). '
                            'Bahan yang digunakan adalah karbon dioksida dan air sehingga '
                            'menghasilkan glukosa dan oksigen. ',
                        fontFamily: 'Caveat Brush',
                        textIndent: false,
                      ),
                    )
                  : SizedBox(),
            ],
          );
        },
      );
    }

    Widget gambarKiri() {
      return Positioned(
        top: 390,
        child: Container(
          padding: EdgeInsets.only(left: defaultPadding),
          child: Column(
            children: [
              CImagetAsset(
                imageName: 'assets/images/karbohidrat3.crop.png',
                width: 140,
              ),
              Container(
                margin: const EdgeInsets.only(top: 6),
                width: 140,
                child: WParagraf(
                  teks: 'Gambar 1.3. Molekul Glukosa. tersusun dari unsur C '
                      '(karbon), H (hidrogen), dan O (oksigen) dengan '
                      'jumlah atom hidrogen dan oksigen merupakan '
                      'perbandingan 2:1 (seperti pada molekul air). '
                      'Hal ini disebabkan karena molekul karbohidrat terdiri '
                      'dari atom karbon yang dikelilingi oleh atom hidrat (air).',
                  textAlign: TextAlign.center,
                  fontSize: 12,
                  fontFamily: 'Caveat Brush',
                  textIndent: false,
                  textHeight: 1.1,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget gambarKanan() {
      return Positioned(
        top: 310,
        right: 0,
        child: Container(
          padding: EdgeInsets.only(right: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CImagetAsset(
                imageName: 'assets/images/karbohidrat2.crop.png',
                width: 200,
              ),
              Container(
                margin: EdgeInsets.only(top: 6),
                width: 140,
                child: WParagraf(
                  teks: 'Gambar 1.2. Fotosintesis Tumbuhan Hijau',
                  textAlign: TextAlign.center,
                  fontSize: 12,
                  fontFamily: 'Caveat Brush',
                  textIndent: false,
                  textHeight: 1.1,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget keteragan() {
      return Positioned(
        top: 530,
        right: 0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          width: MediaQuery.of(context).size.width / 1.99,
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kBgTopLinearColor,
                kBgBottomLinearColor,
              ],
            ),
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Catatan Penting',
                style: blackTextStyle.copyWith(
                  fontFamily: 'Caveat Brush',
                  fontSize: 20,
                ),
              ),
              WParagraf(
                teks: 'Karbohidrat adalah polihidroksil-aldehida atau '
                    'polihidroksil-keton karena mengandung gugus fungsi karbonil '
                    '(C=O) (sebagai aldehida -CHO atau keton -COR’) dan banyak '
                    'gugus hidroksil (-OH).',
                fontSize: 14,
                fontFamily: 'Caveat Brush',
                textAlign: TextAlign.center,
                textHeight: 1,
                textIndent: false,
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 6),
                        WTitleSubtitle(
                          title: '1. Pengertian Karbohidrat',
                        ),
                        WParagraf(
                          teks:
                              'Karbohidrat atau sakarida (dari bahasa Arab “sukkarun” '
                              'yang berarti gula atau manis) adalah senyawa organik '
                              'yang berfungsi sebagai penghasil energi dalam tubuh '
                              'makhluk hidup. ',
                          textIndent: false,
                          fontFamily: 'Caveat Brush',
                          fontSize: 16,
                        ),
                        SizedBox(height: 16),
                        gambar1(),
                      ],
                    ),
                  ),
                ),
                gambarKiri(),
                gambarKanan(),
                keteragan(),
              ],
            ),
          ),
          WNomorHalaman(nomorHalaman: '5')
        ],
      ),
    );
  }
}
