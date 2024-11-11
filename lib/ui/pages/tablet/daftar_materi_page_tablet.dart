import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_daftar_materi.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:flutter/services.dart';

class DaftarMateriPageTablet extends StatelessWidget {
  const DaftarMateriPageTablet({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 24),
              child: Text(
                'DAFTAR MATERI',
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 42,
                  color: kBlackColor2,
                  fontFamily: caveatBrush,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 44, vertical: 22),
              child: Column(
                children: [
                  WidgetDaftarMateri(
                    title: 'Pendahuluan',
                    nomorHalaman: '3',
                    fontSizeTitle: 32,
                    fontSizePage: 28,
                    onTap: () {
                      Navigator.pushNamed(context, '/pendahuluan');
                    },
                  ),
                  WidgetDaftarMateri(
                    margin: EdgeInsets.only(top: 12),
                    title: 'A. Karbohidrat',
                    nomorHalaman: '4',
                    fontSizeTitle: 32,
                    fontSizePage: 28,
                    onTap: () {
                      Navigator.pushNamed(context, '/karbohidrat');
                    },
                  ),
                  WidgetDaftarMateri(
                    margin: EdgeInsets.only(top: 12),
                    title: 'B. Asam Amino & Protein',
                    nomorHalaman: '15',
                    fontSizeTitle: 32,
                    fontSizePage: 28,
                    onTap: () {
                      Navigator.pushNamed(context, '/asamAmino');
                    },
                  ),
                  WidgetDaftarMateri(
                    margin: EdgeInsets.only(top: 12),
                    title: 'C. Asam Nukleat',
                    nomorHalaman: '23',
                    fontSizeTitle: 32,
                    fontSizePage: 28,
                    onTap: () {
                      Navigator.pushNamed(context, '/asamNukleat');
                    },
                  ),
                  WidgetDaftarMateri(
                    margin: EdgeInsets.only(top: 12),
                    title: 'D. Lipida',
                    nomorHalaman: '28',
                    fontSizeTitle: 32,
                    fontSizePage: 28,
                    onTap: () {
                      Navigator.pushNamed(context, '/lipida');
                    },
                  ),
                  WidgetDaftarMateri(
                    margin: EdgeInsets.only(top: 12),
                    title: 'E. Daftar Pustaka',
                    nomorHalaman: '39',
                    fontSizeTitle: 32,
                    fontSizePage: 28,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 44,
                vertical: 20,
              ),
              width: MediaQuery.of(context).size.width,
              // height: 350,
              // color: kRedColor1,
              child: Stack(
                children: [
                  Positioned(
                    left: 50,
                    child: Image.asset(
                      'assets/images/sampul1.png',
                      height: 400,
                    ),
                  ),
                  Positioned(
                    top: 80,
                    right: -35,
                    child: Image.asset(
                      'assets/images/sampul2_rotasi.png',
                      height: 450,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      );
    }

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
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              content(),
              WNomorHalaman(
                nomorHalaman: '2',
                fontSize: 26,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
