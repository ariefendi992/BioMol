import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class DenaturasiProteinPage extends StatelessWidget {
  const DenaturasiProteinPage({super.key});

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
                    title: '5) Protein Pembangun',
                    isSubSubTitle: true,
                    isTitle: false,
                    height: 1,
                    margin: const EdgeInsets.only(top: 6, bottom: 6),
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 3,
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Protein pembangun ',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'berfungsi sebagai unsur pembentuk struktur',
                                style: blackTextStyle.copyWith(
                                    fontFamily: 'Caveat Brush',
                                    fontSize: 14,
                                    backgroundColor: kBlueColor1),
                              ),
                              TextSpan(
                                text:
                                    '. Contohnya glikoprotein merupakan protein '
                                    'komponen membrane sel; α-Keratin, terdapat '
                                    'dalam kulit, bulu ayam, dan kuku; kolagen, '
                                    'merupakan serabut dalam jaringan penyambung.',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        flex: 2,
                        child: Column(
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar2.22.png',
                              width: 160,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  WTitleSubtitle(
                    title: '6) Protein Pelindung atau Pertahanan',
                    isSubSubTitle: true,
                    isTitle: false,
                    height: 1,
                    margin: const EdgeInsets.only(top: 12, bottom: 6),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar2.26.png',
                              width: 130,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        flex: 2,
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'Melindungi organisme dari serangan spesies lain',
                                style: blackTextStyle.copyWith(
                                    fontFamily: 'Caveat Brush',
                                    fontSize: 14,
                                    backgroundColor: kBlueColor1),
                              ),
                              TextSpan(
                                text:
                                    '. Contohnya adalah antibodi merupakan protein '
                                    'yang hanya dibentuk jika ada antigen dan dengan '
                                    'antigen yang merupakan protein asing, dapat '
                                    'membentuk senyawa kompleks.',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  WTitleSubtitle(
                    title: '7) Protein Pengatur',
                    isSubSubTitle: true,
                    isTitle: false,
                    height: 1,
                    margin: const EdgeInsets.only(top: 6, bottom: 6),
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 3,
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Beberapa protein ',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'membantu mengatur aktivitas seluler atau fisiologis',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                  backgroundColor: kBlueColor1,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' misalnya hormon. Contoh protein pengatur '
                                    'adalah insulin, berfungsi mengatur metabolisme glukosa.',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        flex: 2,
                        child: Column(
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar2.23.png',
                              width: 160,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  WTitleSubtitle(
                    title: 'C. Denaturasi Protein',
                    isTitle: false,
                    margin: const EdgeInsets.only(top: 16, bottom: 6),
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Denaturasi merupakan hilangnya fungsi '
                                    'biologis suatu protein',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                  backgroundColor: kBlueColor1,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' karena adanya perubahan struktur protein. '
                                    'Kembalinya fungsi biologis protein dari '
                                    'keadaan terdenaturasi dinamakan dengan renaturasi.',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        flex: 3,
                        child: Column(
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar2.24.png',
                              width: MediaQuery.of(context).size.width,
                            ),
                            WGambarTitle(
                              text:
                                  'Gambar 2.17. Proses Denaturasi dan Renaturasi',
                              margin: const EdgeInsets.only(top: 2),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Flexible(
                        flex: 3,
                        child: Column(
                          children: [
                            CImagetAsset(
                              imageName: 'assets/images/gambar2.25.png',
                              width: MediaQuery.of(context).size.width,
                            ),
                            WGambarTitle(
                              text:
                                  'Gambar 2.18. Contoh Denaturasi dan Renaturasi',
                              margin: const EdgeInsets.only(top: 2),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        flex: 2,
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Denaturasi protein dapat terjadi karena '
                                    'adanya pengaruh pemanasan, penambahan asam, '
                                    'penambahan basa, penambahan garam dan agitasi mekanik.',
                                style: blackTextStyle.copyWith(
                                  fontFamily: 'Caveat Brush',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '22'),
        ],
      ),
    );
  }
}
