import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_button_next_back.dart';
import 'package:bio_mol/ui/widgets/widget_daftar_materi.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:flutter/services.dart';

class DaftarMateriPage extends StatelessWidget {
  const DaftarMateriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          return;
        }
        showDialog(
            context: context,
            builder: (_) {
              return Dialog(
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                insetPadding: const EdgeInsets.symmetric(horizontal: 28),
                child: Container(
                  // height: 100,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/logo_app.png',
                            height: 40,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            'Konfirmasi Keluar...!!!',
                            style: blackTextStyle.copyWith(
                                fontFamily: caveatBrush, fontSize: 24),
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: Text(
                          'Apakah anda ingin keluar dari aplikasi?',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 16),
                        width: double.infinity,
                        alignment: Alignment.bottomRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.all(0)),
                              child: Text(
                                'Tidak',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                SystemNavigator.pop();
                              },
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.all(0)),
                              child: Text(
                                'Ya',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 22,
                                  color: kRedColor1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            });
      },
      child: Scaffold(
        body: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'DAFTAR MATERI',
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 32,
                      color: kBlackColor2,
                      fontFamily: caveatBrush,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                    margin: EdgeInsets.only(top: 68),
                    child: Column(
                      children: [
                        WidgetDaftarMateri(
                          title: 'A. Karbohidrat',
                          nomorHalaman: '4',
                          onTap: () {
                            Navigator.pushNamed(context, '/karbohidrat');
                          },
                        ),
                        WidgetDaftarMateri(
                          margin: EdgeInsets.only(top: 12),
                          title: 'B. Asam Amino & Protein',
                          nomorHalaman: '15',
                          onTap: () {
                            Navigator.pushNamed(context, '/asamAmino');
                          },
                        ),
                        WidgetDaftarMateri(
                          margin: EdgeInsets.only(top: 12),
                          title: 'C. Asam Nukleat',
                          nomorHalaman: '23',
                          onTap: () {
                            Navigator.pushNamed(context, '/asamNukleat');
                          },
                        ),
                        WidgetDaftarMateri(
                          margin: EdgeInsets.only(top: 12),
                          title: 'D. Lipida',
                          nomorHalaman: '28',
                          onTap: () {
                            Navigator.pushNamed(context, '/lipida');
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 44),
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding,
                      vertical: 20,
                    ),
                    width: double.infinity,
                    // height: 300,
                    child: Stack(
                      children: [
                        CImagetAsset(
                          imageName: 'assets/images/gambar1.crop.png',
                          width: 240,
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: CImagetAsset(
                            imageName: 'assets/images/gambar2.crop.png',
                            width: 128,
                          ),
                        )
                      ],
                    ),
                  ),
                  WButtonNextOrBack(
                    onPressed: () {
                      Navigator.pushNamed(context, '/pendahuluan');
                    },
                  )
                ],
              ),
            ),
            // Positioned(
            //   bottom: 0,
            //   right: 0,
            //   child: Container(
            //     alignment: Alignment.center,
            //     width: 44,
            //     height: 48,
            //     decoration: BoxDecoration(
            //         color: kBlueColor1,
            //         borderRadius:
            //             BorderRadius.only(topLeft: Radius.circular(50))),
            //     child: Text(
            //       '  2',
            //       style: blackTextStyle.copyWith(
            //         color: kBlackColor2,
            //         fontSize: 26,
            //         fontWeight: semiBold,
            //       ),
            //     ),
            //   ),
            // )
            WNomorHalaman(nomorHalaman: '2')
          ],
        ),
      ),
    );
  }
}
