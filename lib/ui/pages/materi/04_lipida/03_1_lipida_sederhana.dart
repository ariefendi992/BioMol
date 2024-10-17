import 'package:bio_mol/ui/widgets/widget_dialog_image.dart';
import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class LipidaSederhanaPage extends StatelessWidget {
  const LipidaSederhanaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(bottom: 60),
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding,
                vertical: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WTitleSubtitle(
                    title: 'a. Lipid Sederhana',
                    isTitle: false,
                  ),
                  const SizedBox(height: 6),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'Lipid sederhana atau homolipid merupakan lipid bentuk ester yang mengandung C, H dan O. Lemak atau ',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text:
                              'trigliserida atau triasilgliserida terdiri atas tiga asam lemak',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                            height: 1.4,
                            backgroundColor: kBlueColor1,
                          ),
                        ),
                        TextSpan(
                          text: ' yang tersambung dengan single gliserol. Asam '
                              'lemak pembentuk trigliserida dapat terdiri dari '
                              'jenis yang sama atau campuran dua atau lebih asam '
                              'lemak. Gugus hidroksil polar pada gliserol dan '
                              'gugus karboksil polar pada asam lemak akan membentuk '
                              'ikatan ester.',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            const SizedBox(height: 6),
                            GestureDetector(
                                onDoubleTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (_) => WDialogImage(
                                        imageUrl:
                                            'assets/images/gambar4.7.png'),
                                  );
                                },
                                child:
                                    Image.asset('assets/images/gambar4.7.png')),
                            WGambarTitle(
                              text:
                                  'Gambar 4.7 Reaksi Pembentukan Trigliserida',
                              margin: const EdgeInsets.only(bottom: 4),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'Triasilgliserol bersifat nonpolar dan tidak larut air',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 14,
                                  backgroundColor: kBlueColor1,
                                  // height: 1.4,
                                ),
                              ),
                              TextSpan(
                                text:
                                    '. Pada hewan triasilgliserol bukan merupakan '
                                    'penyusun membran sel biologis, akan tetapi '
                                    'terakumulasi pada jaringan adiposa dan '
                                    'berfungsi sebagai penyimpan energi. Minyak '
                                    'dan lemak pada tumbuhan dan hewan merupakan '
                                    'campuran triasilgliserol. Perbedaan minyak '
                                    'dan lemak adalah wujud miyk cair pada suhu '
                                    'kamar dan lemak berwujud solid.',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 14,
                                  // height: 1.4,
                                ),
                              ),
                              TextSpan(
                                text: '',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 14,
                                  // height: 1.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'Lilin (wax) merupakan senyawa yang tersusun'
                                    ' atas ester asam lemak rantai panjang',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  backgroundColor: kBlueColor1,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: ' dan alkohol rantai panjang. Contohnya '
                                    'setilalkohol dan miristilalkohol. ',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Column(
                          children: [
                            GestureDetector(
                                onDoubleTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (_) => WDialogImage(
                                        imageUrl:
                                            'assets/images/gambar4.8.png'),
                                  );
                                },
                                child:
                                    Image.asset('assets/images/gambar4.8.png')),
                            WGambarTitle(
                              text: 'Gambar 4.8 Struktur Setil palmitat. '
                                  'Setil palmitat salah satu contoh senyawa '
                                  'lilin yang dihasilkan oleh ikan paus.',
                              margin: const EdgeInsets.only(top: 2),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 6),
                  WParagraf(
                    teks: 'Lilin dapat diperoleh dari lebah madu dan ikan paus '
                        'atau lumba-lumba. Lilin tidak larut dalam air, pada '
                        'tumbuhan dan hewan lilin berfungsi sebagai pelindung. ',
                    textIndent: false,
                  ),
                  WTitleSubtitle(
                    title: 'b. Lipid Kompleks/ Lipid Membran',
                    isTitle: false,
                    margin: const EdgeInsets.only(top: 12),
                  ),
                  WParagraf(
                    teks: 'Lipid majemuk merupakan senyawa yang mengandung '
                        'bahan-bahan lain selain alkohol dan asam lemak.',
                    textIndent: false,
                  ),
                  WTitleSubtitle(
                    title: '1) Fosfolipid',
                    isTitle: false,
                    isSubSubTitle: true,
                    margin: const EdgeInsets.only(top: 6),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'Fosfolipid merupakan komponen utama pembentuk membran '
                              'yang tersusun atas double layer. ',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: 'Membran lipid bersifat amfipatik',
                          style: blackTextStyle.copyWith(
                              fontFamily: caveatBrush,
                              fontSize: 14,
                              backgroundColor: kBlueColor1),
                        ),
                        TextSpan(
                          text:
                              ' karena memiliki ujung yang bersifat hidrofobik dan '
                              'ujung lainnya bersifat hidrofilik.',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '35')
        ],
      ),
    );
  }
}
