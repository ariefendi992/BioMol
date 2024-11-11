import 'package:bio_mol/ui/widgets/widget_dialog_image.dart';
import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_judul_gambar.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';

class FosfolipidPage extends StatelessWidget {
  const FosfolipidPage({super.key});

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
                  horizontal: defaultPadding, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/gambar4.9.png'),
                        WGambarTitle(
                          text: 'Gambar 4.9. Struktur Fosfolipid',
                          margin: const EdgeInsets.only(top: 4),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Gliserofosfolipid atau fosfogliserida',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                            backgroundColor: kRedColor1,
                          ),
                        ),
                        TextSpan(
                          text: ' adalah membran lipid yang ',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text:
                              'mengandung dua jenis asam lemak yang membentuk '
                              'senyawa ester',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                            backgroundColor: kRedColor1,
                          ),
                        ),
                        TextSpan(
                          text:
                              ' dengan karbon nomor satu dan dua pada gliserol. '
                              'Karbon ketiga pada gliserol terikat dengan gugus '
                              'fosfor yang memiliki kepolaran tinggi melalui '
                              'ikatan fosfodiester.',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  Center(
                    child: Column(
                      children: [
                        GestureDetector(
                            onDoubleTap: () {
                              showDialog(
                                context: context,
                                builder: (_) => WDialogImage(
                                    imageUrl: 'assets/images/gambar4.10.png'),
                              );
                            },
                            child: Image.asset('assets/images/gambar4.10.png')),
                        WGambarTitle(
                          text: 'Gambar 4.10. Struktur umum Gliserofosfolipid',
                          margin: const EdgeInsets.only(top: 2),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  RichText(
                    textAlign: justify,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Spingolipid memiliki gugus yang mirip dengan '
                              'gliserofosfolipid yaitu bagian kepala yang polar '
                              'dan dua ekor nonpolar. ',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Perbedaan spingolipid dan gliserofosfolipid adalah '
                              'spingolipid tidak memiliki gliserol',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                            backgroundColor: kYellow1,
                          ),
                        ),
                        TextSpan(
                          text:
                              '. Spingolipid mengandung molekul spingosin dan satu '
                              'molekul asam lemak rantai panjang yang terikat '
                              'melalui ikatan glikosidik ataupun fosfodiester.',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          onDoubleTap: () {
                            showDialog(
                              context: context,
                              builder: (_) => WDialogImage(
                                  imageUrl: 'assets/images/gambar4.11.png'),
                            );
                          },
                          child: Image.asset(
                            'assets/images/gambar4.11.png',
                          ),
                        ),
                        WGambarTitle(
                          text: 'Gambar 4.11. Struktur umum Spingolipid',
                          margin: const EdgeInsets.only(top: 2),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '33'),
        ],
      ),
    );
  }
}
