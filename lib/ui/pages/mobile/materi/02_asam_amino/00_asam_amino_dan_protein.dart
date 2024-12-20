import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/pages/mobile/materi/02_asam_amino/main_asam_amino_page.dart';
import 'package:bio_mol/ui/widgets/widget_button_next_back.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class AsamAminoPage extends StatelessWidget {
  const AsamAminoPage({super.key});

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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 16),
                        Text(
                          'B. ASAM AMINO & PROTEIN',
                          style: blackTextStyle.copyWith(
                            color: kBlackColor2,
                            fontSize: 28,
                            letterSpacing: 1.2,
                            fontWeight: bold,
                            fontFamily: 'Caveat Brush',
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainAsamAminoPage(
                                        initialPage: 0,
                                      ),
                                    ),
                                  );
                                },
                                child: WTitleSubtitle(
                                  title: '1. Asam Amino',
                                  height: 1.25,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MainAsamAminoPage(
                                              initialPage: 0,
                                            ),
                                          ),
                                        );
                                      },
                                      child: WTitleSubtitle(
                                        title: 'a. Struktur Asam Amino',
                                        height: 1.25,
                                        isTitle: false,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MainAsamAminoPage(
                                              initialPage: 1,
                                            ),
                                          ),
                                        );
                                      },
                                      child: WTitleSubtitle(
                                        title: 'b. Klasifikasi Asam Amino',
                                        height: 1.25,
                                        isTitle: false,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MainAsamAminoPage(
                                              initialPage: 3,
                                            ),
                                          ),
                                        );
                                      },
                                      child: WTitleSubtitle(
                                        title: 'c. Stereoisomer Asam Amino',
                                        height: 1.25,
                                        isTitle: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainAsamAminoPage(
                                        initialPage: 4,
                                      ),
                                    ),
                                  );
                                },
                                child: WTitleSubtitle(
                                  title: '2. Protein',
                                  height: 1.25,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MainAsamAminoPage(
                                              initialPage: 4,
                                            ),
                                          ),
                                        );
                                      },
                                      child: WTitleSubtitle(
                                        title: 'a. Struktur Protein',
                                        isTitle: false,
                                        height: 1.25,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MainAsamAminoPage(
                                              initialPage: 5,
                                            ),
                                          ),
                                        );
                                      },
                                      child: WTitleSubtitle(
                                        title: 'b. Fungsi Protein',
                                        height: 1.25,
                                        isTitle: false,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MainAsamAminoPage(
                                              initialPage: 6,
                                            ),
                                          ),
                                        );
                                      },
                                      child: WTitleSubtitle(
                                        title: 'c. Denaturasi Protein',
                                        isTitle: false,
                                        height: 1.25,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainAsamAminoPage(
                                        initialPage: 4,
                                      ),
                                    ),
                                  );
                                },
                                child: WTitleSubtitle(
                                  title: '3. Uji Kompetensi',
                                  height: 1.25,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 12),
                          child: Column(
                            children: [
                              Text(
                                'Capaian Pembelajaran',
                                style: blackTextStyle.copyWith(
                                  color: kBlackColor2,
                                  fontSize: 26,
                                  height: 1,
                                  fontFamily: caveatBrush,
                                ),
                              ),
                              SizedBox(height: 12),
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(horizontal: 24),
                                padding: EdgeInsets.symmetric(
                                  vertical: 12,
                                  horizontal: 16,
                                ),
                                decoration: BoxDecoration(
                                    color: kBlueColor1,
                                    borderRadius:
                                        BorderRadius.circular(defaultRadius),
                                    boxShadow: [
                                      BoxShadow(
                                        color: kBlackColor.withOpacity(0.2),
                                        spreadRadius: 4,
                                        blurRadius: 18,
                                        offset: Offset(2.0, 4.0),
                                      )
                                    ]),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '1.',
                                          style: blackTextStyle.copyWith(
                                              fontFamily: luckyBones,
                                              fontSize: 18,
                                              height: 1.2),
                                        ),
                                        const SizedBox(width: 6),
                                        Flexible(
                                          child: Text(
                                            'Mahasiswa mampu menjelaskan struktur'
                                            'asam amino dan polipeptida.',
                                            style: blackTextStyle.copyWith(
                                                fontFamily: luckyBones,
                                                fontSize: 18,
                                                height: 1.2),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '2.',
                                          style: blackTextStyle.copyWith(
                                              fontFamily: luckyBones,
                                              fontSize: 18,
                                              height: 1.2),
                                        ),
                                        const SizedBox(width: 6),
                                        Flexible(
                                          child: Text(
                                            'Mahasiswa mampu menjelaskan struktur protein dan fungisnya.',
                                            style: blackTextStyle.copyWith(
                                                fontFamily: luckyBones,
                                                fontSize: 18,
                                                height: 1.2),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 20, bottom: 32),
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
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            WNomorHalaman(nomorHalaman: '15')
          ],
        ),
      ),
    );
  }
}
