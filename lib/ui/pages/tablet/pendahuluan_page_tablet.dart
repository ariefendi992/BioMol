import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_button_next_back.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';

class PendahuluanPagetablet extends StatelessWidget {
  const PendahuluanPagetablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 32),
                    // color: kRedColor1,
                    alignment: Alignment.center,
                    child: Text(
                      'PENDAHULUAN',
                      style: blackTextStyle.copyWith(
                        color: kBlackColor2,
                        fontSize: 42,
                        fontFamily: caveatBrush,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: WParagraf(
                            teks:
                                'Pada pembelajaran ini, subjek yang akan dibahas adalah kelompok senyawa '
                                'organik yang dikelompokan dalam kelompok senyawa makromolekul. '
                                'Makromolekul adalah senyawa yang sangat penting dalam proses kehidupan '
                                'manusia karena fungsinya yang sangat penting.',
                            fontSize: 28,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: WParagraf(
                            teks:
                                'Dari keempat senyawa makro molekul yang akan dipaparkan lebih lanjut, '
                                'hanya kelompok lipid yang tidak dapat dikategorikan sebagai kelompok senyawa polimer. '
                                'Polimer adalah rantai sub-unit serupa, atau monomer, yang dihubungkan bersama oleh ikatan kovalen. '
                                'Dalam protein, monomernya adalah asam amino; dalam karbohidrat, monomernya adalah sakarida; '
                                'dan dalam asam nukleat, monomernya adalah nukleotida. '
                                'Lipid adalah kelompok senyawa yang terdiri dari komponen penyusun yang beragam, '
                                'yang dapat datang dalam berbagai bentuk nonpolimer.',
                            fontSize: 28,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            WNomorHalaman(nomorHalaman: '3', fontSize: 26)
          ],
        ),
      ),
    );
  }
}


// UPDATE TAMPILAN HALAMAN INI, HARUS RESPONSIVE.
