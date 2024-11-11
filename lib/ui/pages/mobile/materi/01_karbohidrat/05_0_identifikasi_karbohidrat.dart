import 'package:bio_mol/ui/widgets/widget_dialog_image.dart';
import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class IdentifikasiKarbohidratPage extends StatelessWidget {
  const IdentifikasiKarbohidratPage({super.key});

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
                children: [
                  Center(
                    child: WTitleSubtitle(
                      title: 'TUGAS PROYEK',
                      margin: const EdgeInsets.only(top: 6),
                    ),
                  ),
                  WParagraf(
                    teks: 'Identifikasi makanan dan minuman yang anda konsumsi '
                        'berdasarkan tabel dibawah ini:',
                    textHeight: 1.12,
                    textIndent: false,
                  ),
                  const SizedBox(height: 12),
                  Center(
                    child: GestureDetector(
                      onDoubleTap: () {
                        showDialog(
                          context: context,
                          builder: (_) => WDialogImage(
                            imageUrl: 'assets/images/gambar1.31.png',
                            dialogHeight: 140,
                          ),
                        );
                      },
                      child: CImagetAsset(
                        imageName: 'assets/images/gambar1.31.png',
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WParagraf(
                              teks: '1.',
                              textHeight: 1.12,
                              textIndent: false,
                            ),
                            const SizedBox(width: 4),
                            Flexible(
                              child: WParagraf(
                                teks:
                                    'Tentukan, apakah makanan tersebut tergolong dalam '
                                    'karbohidrat, protein atau lemak.',
                                textHeight: 1.12,
                                textIndent: false,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WParagraf(
                              teks: '2.',
                              textHeight: 1.12,
                              textIndent: false,
                            ),
                            const SizedBox(width: 4),
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Lakukanlan studi literatur tentang '
                                          'kandungan makanan yang tergolong dalam '
                                          'makromolekul ',
                                      style: blackTextStyle.copyWith(
                                          fontSize: 14,
                                          fontFamily: 'Caveat Brush',
                                          height: 1.12),
                                    ),
                                    TextSpan(
                                      text: 'Karbohidrat',
                                      style: blackTextStyle.copyWith(
                                          fontSize: 14,
                                          fontFamily: 'Caveat Brush',
                                          height: 1.12,
                                          backgroundColor: kBlueColor1),
                                    ),
                                    TextSpan(
                                      text: '.',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 14,
                                        height: 1.12,
                                        fontFamily: 'Caveat Brush',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WParagraf(
                              teks: '3.',
                              textHeight: 1.12,
                              textIndent: false,
                            ),
                            const SizedBox(width: 4),
                            Flexible(
                              child: WParagraf(
                                teks:
                                    'Gambarkan struktur kimia dan nama dari kandungan '
                                    'makanan tersebut pada manila karton.',
                                textHeight: 1.12,
                                textIndent: false,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WParagraf(
                              teks: '4.',
                              textHeight: 1.12,
                              textIndent: false,
                            ),
                            const SizedBox(width: 4),
                            Flexible(
                              child: WParagraf(
                                teks:
                                    'Tentukan golongan dari setiap kandungan makanan '
                                    'tersebut kemudian buat penjelasannya.',
                                textHeight: 1.12,
                                textIndent: false,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WParagraf(
                              teks: '5.',
                              textHeight: 1.12,
                              textIndent: false,
                            ),
                            const SizedBox(width: 4),
                            Flexible(
                              child: WParagraf(
                                teks:
                                    'Buat penjelasan tambahan tentang fungsi dari '
                                    'makanan tersebut.',
                                textHeight: 1.12,
                                textIndent: false,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WParagraf(
                              teks: '6.',
                              textHeight: 1.12,
                              textIndent: false,
                            ),
                            const SizedBox(width: 4),
                            Flexible(
                              child: WParagraf(
                                teks:
                                    'presentasikan hasil proyek kelompok anda.',
                                textHeight: 1.12,
                                textIndent: false,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  WParagraf(
                    teks: 'Catatan: setiap kelompok harus mengidentifikasi '
                        'minimal 10 makanan dan minuman, kemudian tidak boleh '
                        'sama jenis makanan dan minuman antar kelompok',
                    textIndent: false,
                    textHeight: 1.12,
                  ),
                  const SizedBox(height: 12),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Contoh: Makanan yang di konsumsi adalah ',
                          style: blackTextStyle.copyWith(
                              fontSize: 14,
                              fontFamily: 'Caveat Brush',
                              height: 1.12),
                        ),
                        TextSpan(
                          text: 'nasi',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontFamily: 'Caveat Brush',
                            height: 1.12,
                            backgroundColor: kBlueColor1,
                          ),
                        ),
                        TextSpan(
                          text:
                              '. Nasi adalah karbohidrat yang memiliki struktur '
                              'Glukosa yang tergolong dalam monosakarida yaitu '
                              'karbohidrat yang paling sederhana dan hanya '
                              'memiliki 1 monomer.',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            height: 1.12,
                            fontFamily: 'Caveat Brush',
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
                          imageName: 'assets/images/karbohidrat3.crop.png',
                          width: 140,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: WGambarTitle(
                              text: 'Gambar 1. Molekul Glukosa. tersusun '
                                  'dari unsur C (karbon), H (hidrogen), dan O '
                                  '(oksigen) dengan jumlah atom hidrogen dan '
                                  'oksigen merupakan perbandingan 2:1 (seperti '
                                  'pada molekul air). Hal ini disebabkan karena '
                                  'molekul karbohidrat terdiri dari atom karbon '
                                  'yang dikelilingi oleh atom hidrat (air).'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '14'),
        ],
      ),
    );
  }
}
