import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_icon.dart';
import 'package:bio_mol/ui/widgets/widget_nomor_halaman.dart';
import 'package:bio_mol/ui/widgets/widget_teks_paragraf.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class GolonganKarbohidratBagian2 extends StatelessWidget {
  const GolonganKarbohidratBagian2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              margin: const EdgeInsets.only(bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 6),
                  WParagraf(
                    teks: 'Ketoheksosa juga dapat membentuk isomer α '
                        'dan β serta biasanya membentuk srtuktur furanosa yang'
                        ' merupakan derivat furan. Cincin furanosa merupakan '
                        'struktur cincin yang terdiri atas 5 atom dimana '
                        'terbentuk karena ada reaksi antara gugus fungsi '
                        'hidroksil alkoholik pada atom C 5 dengan gugus '
                        'karbonil pada atom C 2.',
                    fontFamily: 'Caveat Brush',
                    textIndent: false,
                    fontSize: 16,
                  ),
                  Container(
                    // margin: const EdgeInsets.only(top: 6),
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Column(
                        children: [
                          CImagetAsset(
                            imageName: 'assets/images/gambar1.12.crop.png',
                            width: MediaQuery.of(context).size.width / 1.2,
                          ),
                          Text(
                            'Gambar 1.12. Cincin Furanosa dan Cincin Piranosa',
                            style: blackTextStyle.copyWith(
                              fontFamily: 'Caveat Brush',
                              fontSize: 14,
                              height: 0.5,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  WTitleSubtitle(
                    title: 'b. Oligosakarida',
                    isTitle: false,
                  ),
                  WParagraf(
                    teks: 'Oligosarida terbentuk karena adanya ikatan '
                        'glikosidik antara molekul monosakarida pada atom C 1 '
                        'molekul satu dengan gugus hidroksil ( -OH) pada '
                        'molekul lainnya. Biasanya ikatan glikosidik terbentuk '
                        'antara C 1 pada satu molekul dengan C 3 '
                        'pada molekul lainnya.',
                    textIndent: false,
                    fontSize: 16,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Column(
                        children: [
                          CImagetAsset(
                            imageName: 'assets/images/gambar1.13.crop.png',
                            width: MediaQuery.of(context).size.width / 1.6,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.7,
                            child: Text(
                              'Gambar 1.13. Ikatan Glikosidik pada sukrosa yang '
                              'menggabungkan glukosa dan fruktosa',
                              style: blackTextStyle.copyWith(
                                fontFamily: 'Caveat Brush',
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          WNomorHalaman(nomorHalaman: '9'),
        ],
      ),
    );
  }
}
