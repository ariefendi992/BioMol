import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/pages/materi/04_lipida/main_lipida.dart';
import 'package:bio_mol/ui/widgets/widget_button_next_back.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class LipidaPage extends StatelessWidget {
  const LipidaPage({super.key});

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
                          'D. LIPIDA',
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
                                      builder: (context) => MainLipidaPage(
                                        initialPage: 0,
                                      ),
                                    ),
                                  );
                                },
                                child: WTitleSubtitle(
                                  title: '1. Pengertian Lipida',
                                  height: 1.25,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainLipidaPage(
                                        initialPage: 0,
                                      ),
                                    ),
                                  );
                                },
                                child: WTitleSubtitle(
                                  title: '2. Asam Lemak',
                                  height: 1.25,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainLipidaPage(
                                        initialPage: 2,
                                      ),
                                    ),
                                  );
                                },
                                child: WTitleSubtitle(
                                  title: '3. Klasifikasi Lipida',
                                  height: 1.25,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainLipidaPage(
                                        initialPage: 6,
                                      ),
                                    ),
                                  );
                                },
                                child: WTitleSubtitle(
                                  title: '4. Fungsi Lipida',
                                  height: 1.25,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainLipidaPage(
                                        initialPage: 7,
                                      ),
                                    ),
                                  );
                                },
                                child: WTitleSubtitle(
                                  title: '5. Reaksi Pada Lipida',
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
                                          fontSize: 28,
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
                                            'Menjelaskan Struktur Lipid dan Membran  ',
                                            style: blackTextStyle.copyWith(
                                                fontFamily: 'Caveat Brush',
                                                fontSize: 22,
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
            WNomorHalaman(nomorHalaman: '31')
          ],
        ),
      ),
    );
  }
}
