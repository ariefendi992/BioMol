import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_button_next_back.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';

class PendahuluanPage extends StatelessWidget {
  const PendahuluanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SafeArea(
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 6),
                      Text(
                        'PENDAHULUAN',
                        style: blackTextStyle.copyWith(
                          color: kBlackColor2,
                          fontSize: 26,
                          // fontWeight: bold,
                          fontFamily: caveatBrush,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: defaultPadding),
                        child: WParagraf(
                          teks:
                              'Pada pembelajaran ini, subjek yang akan dibahas adalah kelompok senyawa '
                              'organik yang dikelompokan dalam kelompok senyawa makromolekul. '
                              'Makromolekul adalah senyawa yang sangat penting dalam proses kehidupan '
                              'manusia karena fungsinya yang sangat penting.',
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: defaultPadding),
                        child: WParagraf(
                          teks:
                              'Dari keempat senyawa makro molekul yang akan dipaparkan lebih lanjut, '
                              'hanya kelompok lipid yang tidak dapat dikategorikan sebagai kelompok senyawa polimer. '
                              'Polimer adalah rantai sub-unit serupa, atau monomer, yang dihubungkan bersama oleh ikatan kovalen. '
                              'Dalam protein, monomernya adalah asam amino; dalam karbohidrat, monomernya adalah sakarida; '
                              'dan dalam asam nukleat, monomernya adalah nukleotida. '
                              'Lipid adalah kelompok senyawa yang terdiri dari komponen penyusun yang beragam, '
                              'yang dapat datang dalam berbagai bentuk nonpolimer.',
                        ),
                      ),
                      CImagetAsset(
                        margin: const EdgeInsets.only(top: 12, bottom: 8),
                        imageName:
                            'assets/images/senyawa_makromolekul1.crop.png',
                        width: double.infinity,
                      ),
                      WButtonNextOrBack(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/daftarMateri');
                        },
                        icon: Icons.arrow_back_ios,
                        postitionCenter: true,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '3')
        ],
      ),
    );
  }
}
