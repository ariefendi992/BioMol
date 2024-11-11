import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/pages/mobile/materi/03_asam_nukleat/main_asam_nukleat.dart';
import 'package:bio_mol/ui/widgets/widget_button_next_back.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class AsamNukleatPage extends StatelessWidget {
  const AsamNukleatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          return;
        }
        Navigator.pushNamedAndRemoveUntil(
            context, '/daftarMateri', (_) => false);
      },
      child: Scaffold(
        backgroundColor: kBgPrimaryColor,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: SafeArea(
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          'C. ASAM NUKLEAT',
                          style: blackTextStyle.copyWith(
                            color: kBlackColor2,
                            fontSize: 28,
                            letterSpacing: 1.2,
                            fontWeight: bold,
                            fontFamily: 'Caveat Brush',
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainAsamNukleatPage(
                                        initialPage: 0,
                                      ),
                                    ),
                                  );
                                },
                                child: WTitleSubtitle(
                                  title: '1. Fungsi Asam Nukleat',
                                  height: 1.25,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainAsamNukleatPage(
                                        initialPage: 1,
                                      ),
                                    ),
                                  );
                                },
                                child: WTitleSubtitle(
                                  title: '2. Struktur Asam Nukleat',
                                  height: 1.25,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainAsamNukleatPage(
                                        initialPage: 1,
                                      ),
                                    ),
                                  );
                                },
                                child: WTitleSubtitle(
                                  title: '3. Fungsi Asam Nukleat',
                                  height: 1.25,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainAsamNukleatPage(
                                        initialPage: 1,
                                      ),
                                    ),
                                  );
                                },
                                child: WTitleSubtitle(
                                  title: '4. Uji Kompetensi',
                                  height: 1.25,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Column(
                                  children: [
                                    Text(
                                      'Capaian Pembelajaran',
                                      style: blackTextStyle.copyWith(
                                          color: kBlackColor2,
                                          fontSize: 26,
                                          // fontWeight: bold,
                                          fontFamily: caveatBrush,
                                          height: 1),
                                    ),
                                    SizedBox(height: 12),
                                    Container(
                                      width: double.infinity,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 24),
                                      padding: EdgeInsets.symmetric(
                                        vertical: 20,
                                        horizontal: 12,
                                      ),
                                      decoration: BoxDecoration(
                                          color: kBlueColor1,
                                          borderRadius: BorderRadius.circular(
                                              defaultRadius),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  kBlackColor.withOpacity(0.2),
                                              spreadRadius: 4,
                                              blurRadius: 18,
                                              offset: Offset(2.0, 4.0),
                                            )
                                          ]),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Mahasiswa mampu menjelaskan dan menganalisis struktur asmam nukleat',
                                            style: blackTextStyle.copyWith(
                                                fontFamily: luckyBones,
                                                fontSize: 18,
                                                height: 1.2),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 44, bottom: 44),
                          child: Stack(
                            children: [
                              CImagetAsset(
                                imageName: 'assets/images/gambar1.crop.png',
                                width: 250,
                              ),
                              Positioned(
                                right: 0,
                                bottom: 0,
                                child: CImagetAsset(
                                  imageName: 'assets/images/gambar2.crop.png',
                                  width: 140,
                                ),
                              )
                            ],
                          ),
                        ),
                        WButtonNextOrBack(
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                                context, '/daftarMateri', (_) => false);
                          },
                          icon: Icons.arrow_back_ios,
                          postitionCenter: true,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            WNomorHalaman(nomorHalaman: '23')
          ],
        ),
      ),
    );
  }
}
