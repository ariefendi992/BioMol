import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class StereoisomerAsamAminoPage extends StatelessWidget {
  const StereoisomerAsamAminoPage({super.key});

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
                    title: 'c. Stereoisomer Asam Amino',
                    isTitle: false,
                    margin: const EdgeInsets.only(top: 6),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'Selain glisin, α-karbon pada asam amino merupakan '
                              'C kiral. Oleh sebab itu, struktur tetrahedral '
                              'asam amino memiliki dua bentuk yang merupakan '
                              'bayangan cermin yang dinamakan dengan enantiomer. ',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                            height: 1,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Semua molekul yang memiliki C kiral merupakan optikal aktif',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                            backgroundColor: kBlueColor1,
                            height: 1,
                          ),
                        ),
                        TextSpan(
                          text:
                              ' yang bisa memutar bidang cahaya terpolarisasi sehingga '
                              'membentuk sistem D (dextrorotatory, memutar cahaya '
                              'ke kanan) dan L (levorotatory, memutar cahaya ke kiri). '
                              'Asam amino penyusun molekul protein adalah yang '
                              'memiliki stereoisomer L. D-asam amino dapat '
                              'ditemukan pada penyusun peptida rantai pendek '
                              'yang menyusun dinding sel bakteri dan peptida '
                              'yang berfungsi sebagai antibiotik.',
                          style: blackTextStyle.copyWith(
                            fontFamily: 'Caveat Brush',
                            fontSize: 14,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: Column(
                      children: [
                        CImagetAsset(
                          imageName: 'assets/images/gambar2.11.png',
                          width: MediaQuery.of(context).size.width / 1.2,
                        ),
                        WGambarTitle(
                          text: 'Gambar 2.10. Stereoisomer Alanin',
                          margin: const EdgeInsets.only(top: 4),
                        )
                      ],
                    ),
                  ),
                  WTitleSubtitle(
                    title: 'd. Fungsi Asam Amino',
                    isTitle: false,
                    margin: const EdgeInsets.only(top: 16, bottom: 6),
                  ),

                  // KIRI
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: kBlackColor2,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Flexible(
                                  child: WParagraf(
                                    teks: 'Penyusun protein, termasuk enzim.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
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
                                        'Sebagai kerangka dasar sejumlah senyawa '
                                        'penting dalam metabolisme (terutama '
                                        'vitamin, hormon, dan asam nukleat).',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: kBlackColor2,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Flexible(
                                  child: WParagraf(
                                    teks: 'Pengikat logam penting yang di '
                                        'perlukan dalam reaksi enzimatik (kofaktor).',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
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
                                        'Fenilalanin : Membantu dalam meningkatkan '
                                        'daya memori dan juga membantu untuk '
                                        'menjaga sistem saraf yang sehat.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
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
                                        'Valin : Membantu dalam pertumbuhan otot.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
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
                                        'Treonin : Meningkatkan fungsi sistem kekebalan tubuh.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
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
                                        'Tryptophan : Membantu dalam menjaga nafsu makan kita.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: kBlackColor2,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Flexible(
                                  child: WParagraf(
                                    teks: 'Isoleusin : Membantu dalam sintesis '
                                        'hemoglobin dan merupakan komponen utama '
                                        'dari RBC (sel darah merah).',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
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
                                        'Metionin : Membantu dalam menjaga kulit yang baik dan sehat.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
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
                                        'Leusin : Meningkatkan sintesis hormon pertumbuhan.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
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
                                        'Lysine : Membantu dalam sintesis enzim dan hormon lainnya.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // END KIRI

                      const SizedBox(width: 12),
                      // NOTE: KANAN
                      Flexible(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: kBlackColor2,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Flexible(
                                  child: WParagraf(
                                    teks: 'Histidin : Membantu dalam produksi '
                                        'dan sintesis dari RBC (sel darah merah) '
                                        'dan WBC (sel darah putih).',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: kBlackColor2,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Flexible(
                                  child: WParagraf(
                                    teks: 'Alanin : Membantu dalam penghapusan '
                                        'racun dari tubuh kita.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
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
                                        'Sistein : Menyediakan resistensi terhadap '
                                        'tubuh kita dan menghambat pertumbuhan '
                                        'rambut, kuku dan lain-lain.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
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
                                        'Sistin : Berfungsi sebagai antioksidan '
                                        'dan melindungi tubuh kita terhadap radiasi dan polusi.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
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
                                        'Glutamin : Hal ini diperlukan untuk sintesis RNA dan DNA.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
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
                                        'Glycine : Sebagai neurotransmitter dan '
                                        'memainkan peran penting dalam penyembuhan luka.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
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
                                        'Glutamat : Membantu dalam penghapusan '
                                        'racun dari tubuh kita.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
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
                                        'Arginin : Membantu biosintesis protein.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: kBlackColor2,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Flexible(
                                  child: WParagraf(
                                    teks: 'Tirosin : Membantu dalam produksi '
                                        'hormon T3 dan T4 tiroid.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
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
                                        'Serin : Membantu dalam pertumbuhan otot.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: kBlackColor2,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Flexible(
                                  child: WParagraf(
                                    teks: 'Asparagin : Membantu dalam formasi '
                                        'purin dan pirimidin untuk sintesis DNA.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: kBlackColor2,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                Flexible(
                                  child: WParagraf(
                                    teks: 'Asam aspartat : Membantu. sintesis '
                                        'asam amino lainnya.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 4, right: 4),
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
                                        'Prolin : Membantu dalam regenerasi kulit baru.',
                                    textIndent: false,
                                    textHeight: 1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '19'),
        ],
      ),
    );
  }
}
