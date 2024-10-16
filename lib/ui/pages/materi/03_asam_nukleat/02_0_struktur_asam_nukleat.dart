import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class StrukturAsamNukleat0 extends StatelessWidget {
  const StrukturAsamNukleat0({super.key});

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
                  const SizedBox(height: 8),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Gula pentosa',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                            backgroundColor: kBlueColor1,
                          ),
                        ),
                        TextSpan(
                          text:
                              ' penyusun nukleotida memiliki bentuk furanosa. '
                              'Gula pentosa penyusun asam nukleat yaitu 2-deoxy-D-ribosa '
                              'dan D-ribosa. Basa nitrogen heterosiklik terikat secara '
                              'kovalen dengan pentosa dalam ikatan N-β-glikosil. '
                              'Ikatan N-β-glikosil terjadi antara karbon 1’ pada '
                              'pentosa dengan nitrogen nomor 1 pada pirimidin dan '
                              'nitrogen nomor 9 pada purin. Gugus fosfat terikat '
                              'pada karbon 5’ gula pentosa melalui mekanisme '
                              'esterifikasi sehingga dinamakan ikatan fosfoester.',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Column(
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar3.5.png',
                              width: MediaQuery.of(context).size.width,
                            ),
                            WGambarTitle(
                              text: 'Gambar 3.5. Struktur Gula Pentosa',
                              margin: const EdgeInsets.only(top: 2),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        flex: 3,
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'Ribonukleosida dan deoksinukleosida dalam sel',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                  backgroundColor: kBlueColor1,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' tidak hanya berbentuk 5’-monofosfat tetapi juga dapat ',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'berbentuk 5’-difosfat (NDP) dan 5’-trifosfat (NTP)',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                  backgroundColor: kBlueColor1,
                                ),
                              ),
                              TextSpan(
                                text: '. ATP adalah salah satu contoh NTP yang '
                                    'memiliki gugus fosfat dan pirofosfat serta '
                                    'berperan pada transfer energi kimia pada '
                                    'reaksi enzimatik. ATP bisa mengalami '
                                    'defosforilasi menjadi ADP, sebaliknya ADP '
                                    'dapat mengalami refosforilasi menjadi ATP '
                                    'pada proses respirasi.',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 12),
                  Center(
                    child: Column(
                      children: [
                        CImagetAsset(
                          imageName: 'assets/images/gambar3.6.png',
                          width: MediaQuery.of(context).size.width / 1.4,
                        ),
                        WGambarTitle(
                          text: 'Gambar 3.6. Struktur AMP, ADP dan ATP',
                          margin: const EdgeInsets.only(top: 4, bottom: 12),
                        ),
                      ],
                    ),
                  ),
                  WTitleSubtitle(
                    title: '2. Struktur Asam Nukleat',
                    margin: const EdgeInsets.only(top: 16),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Seperti halnya molekul polimer lainnya, '
                                    'senyawa asam nukleat juga akan terbentuk dari gabungan monomer-monemernya',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                  backgroundColor: kBlueColor1,
                                ),
                              ),
                              TextSpan(
                                text: '. Monomer nukleotida akan menyatu '
                                    'membentuk suatu molekul asam nukleat dengan membentuk ikatan fosfodiester. ',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
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
                            CImagetAsset(
                              imageName: 'assets/images/gambar3.7.png',
                              width: MediaQuery.of(context).size.width,
                            ),
                            WGambarTitle(
                              text:
                                  'Gambar 3.7. Pembentukan Ikatan Fosfodiester',
                              margin: const EdgeInsets.only(top: 4),
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
          WNomorHalaman(nomorHalaman: '25'),
        ],
      ),
    );
  }
}
