import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class FungsiKarbohidratPage extends StatelessWidget {
  const FungsiKarbohidratPage({super.key});

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
                    title: '4. Fungsi Karbohidrat',
                    margin: const EdgeInsets.only(top: 6, bottom: 12),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CImagetAsset(
                          imageName: 'assets/images/gambar1.25.png',
                          width: 120,
                        ),
                        const SizedBox(width: 12),
                        Flexible(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 6, right: 6),
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                  color: kBlackColor2,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              Flexible(
                                child: WParagraf(
                                  teks: 'Karbohidrat sebagai penghasil energi '
                                      'utama dalam tubuh. 1 gram karbohidrat '
                                      'menghasilkan 4 kalori) bagi kebutuhan '
                                      'sel-sel jaringan tubuh.',
                                  textHeight: 1.2,
                                  textIndent: false,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 6, right: 6),
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                  color: kBlackColor2,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              Flexible(
                                child: WParagraf(
                                  teks: 'Karbohidrat sebagai komponen penyusun '
                                      'membran sel. Sekitar 5% berat membran sel '
                                      'adalah karbohidrat yang berikatan baik '
                                      'dalam bentuk glikoprotein maupun glikolipid.',
                                  textHeight: 1.2,
                                  textIndent: false,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        CImagetAsset(
                          imageName: 'assets/images/gambar1.26.png',
                          width: 140,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CImagetAsset(
                          imageName: 'assets/images/gambar1.27.png',
                          width: 130,
                        ),
                        const SizedBox(width: 12),
                        Flexible(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 6, right: 6),
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                  color: kBlackColor2,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              Flexible(
                                child: WParagraf(
                                  teks: 'Karbohidrat sebagai penyusun komponen '
                                      'genetik. DNA ataupun RNA memiliki '
                                      'kandungan gula “ribosa” yang berikatan '
                                      'dengan basa nitrogen dan fosfat.',
                                  textHeight: 1.2,
                                  textIndent: false,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 6, right: 6),
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                  color: kBlackColor2,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              Flexible(
                                child: WParagraf(
                                  teks:
                                      'Karbohidrat sebagai penyusun massa otot. '
                                      'Glukosa yang tidak dipakai akan otomatis '
                                      'diubah menjadi bentuk lain dalam bentuk '
                                      'glikogen. Penyimpanan senyawa ini bisa di '
                                      'dalam otot maupun di dalam hati.',
                                  textHeight: 1.2,
                                  textIndent: false,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        CImagetAsset(
                          imageName: 'assets/images/gambar1.28.png',
                          width: 140,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CImagetAsset(
                          imageName: 'assets/images/gambar1.29.png',
                          width: 146,
                        ),
                        const SizedBox(width: 12),
                        Flexible(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 6, right: 6),
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                  color: kBlackColor2,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              Flexible(
                                child: WParagraf(
                                  teks: 'Karbohidrat menjadi penyusun utama '
                                      'dalam beberapa makhluk hidup. Contoh: '
                                      'Dinding sel tumbuhan, selulosa, kulit '
                                      'udang dan kepiting, kitin, umbi-umbian, '
                                      'amilum.',
                                  textHeight: 1.2,
                                  textIndent: false,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 6, right: 6),
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                  color: kBlackColor2,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              Flexible(
                                child: WParagraf(
                                  teks: 'Sebagai pemanis alami',
                                  textHeight: 1.2,
                                  textIndent: false,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        CImagetAsset(
                          imageName: 'assets/images/gambar1.30.png',
                          width: 150,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '13'),
        ],
      ),
    );
  }
}
