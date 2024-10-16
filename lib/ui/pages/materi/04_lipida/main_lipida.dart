import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/pages/materi/04_lipida/01_0_pengertian_lipida.dart';
import 'package:bio_mol/ui/pages/materi/04_lipida/02_0_asam_lemak.dart';
import 'package:bio_mol/ui/pages/materi/04_lipida/03_0_klasifikasi_lipida.dart';
import 'package:bio_mol/ui/pages/materi/04_lipida/03_1_lipida_sederhana.dart';
import 'package:bio_mol/ui/pages/materi/04_lipida/03_2_Fosfolipid.dart';
import 'package:bio_mol/ui/pages/materi/04_lipida/03_3_glikolipid.dart';
import 'package:bio_mol/ui/pages/materi/04_lipida/04_0_fungsi_lipida.dart';
import 'package:bio_mol/ui/pages/materi/04_lipida/05_0_reaksi_pada_lipida.dart';
import 'package:bio_mol/ui/pages/materi/04_lipida/05_1_reaksi_hidrolisis_lemak.dart';

class MainLipidaPage extends StatefulWidget {
  final int? initialPage;
  const MainLipidaPage({
    super.key,
    this.initialPage = 0,
  });

  @override
  State<MainLipidaPage> createState() => _MainLipidaPageState();
}

class _MainLipidaPageState extends State<MainLipidaPage> {
  late PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.initialPage!);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgPrimaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          title: Text(
            'LIPIDA',
            style: blackTextStyle.copyWith(
              fontSize: 22,
              fontFamily: caveatBrush,
              letterSpacing: 1.2,
            ),
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                pageController.previousPage(
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut,
                );
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 16,
              ),
            ),
            IconButton(
              onPressed: () {
                pageController.nextPage(
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut,
                );
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          PengertianLipida0(),
          AsamLemakPage(),
          KlasifikasiLipidaPage(),
          LipidaSederhanaPage(),
          FosfolipidPage(),
          GlikolipidPage(),
          FungsiLipidaPage(),
          ReaksiPadaLipidaPage(),
          ReaksiHidrolisisLemakPage(),
        ],
      ),
    );
  }
}
