import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class KlasifikasiAsamAminoPage2 extends StatelessWidget {
  const KlasifikasiAsamAminoPage2({super.key});

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
                    title: '3). Gugus R bermuatan positif',
                    isTitle: false,
                    isSubSubTitle: true,
                    margin: const EdgeInsets.only(top: 6, bottom: 12),
                  ),
                  Center(
                    child: Column(
                      children: [
                        CImagetAsset(
                          imageName: 'assets/images/gambar2.8.png',
                          width: MediaQuery.of(context).size.width,
                        ),
                        WGambarTitle(
                          text:
                              'Gambar 2.8. Struktur Asam Amino Bermuatan Positif',
                          margin: const EdgeInsets.only(top: 4),
                        ),
                      ],
                    ),
                  ),
                  WTitleSubtitle(
                    title: '4). Gugus R bermuatan negatif',
                    isTitle: false,
                    isSubSubTitle: true,
                    margin: const EdgeInsets.only(top: 16, bottom: 12),
                  ),
                  Center(
                    child: Column(
                      children: [
                        CImagetAsset(
                          imageName: 'assets/images/gambar2.9.png',
                          width: MediaQuery.of(context).size.width,
                        ),
                        WGambarTitle(
                          text:
                              'Gambar 2.9. Struktur Asam Amino Bermuatan Negatif',
                          margin: const EdgeInsets.only(top: 4),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'Berdasarkan kemampuan tubuh mensintesis, asam amino dibagi menjadi ',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                ),
                              ),
                              TextSpan(
                                text: 'asam amino essensial dan nonesensial',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  backgroundColor: kBlueColor2,
                                ),
                              ),
                              TextSpan(
                                text: '. Asam amino esensial adalah asam amino '
                                    'yang tidak dapat disintesis oleh tubuh '
                                    'sehingga harus diperoleh dari makanan yang '
                                    'dikonsumsi. Sedangkan Asam amino '
                                    'nonesensial adalah asam amino yang dapat '
                                    'disintesis oleh tubuh.',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      Flexible(
                        flex: 3,
                        child: Column(
                          children: [
                            WGambarTitle(
                              text:
                                  'Tabel 2.1. Asam Amino Esensial dan Nonesensial',
                            ),
                            CImagetAsset(
                              imageName: 'assets/images/gambar2.10.png',
                              width: MediaQuery.of(context).size.width,
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
          WNomorHalaman(nomorHalaman: '18')
        ],
      ),
    );
  }
}
