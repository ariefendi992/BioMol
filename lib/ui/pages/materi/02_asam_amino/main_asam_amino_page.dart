import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/pages/materi/02_asam_amino/01_0_struktur_asam_amino.dart';
import 'package:bio_mol/ui/pages/materi/02_asam_amino/01_1_klasifikasi_asam_amino.dart';
import 'package:bio_mol/ui/pages/materi/02_asam_amino/01_2_klasifikasi_asam_amino.dart';
import 'package:bio_mol/ui/pages/materi/02_asam_amino/01_3_stereoisomer_asam_amino.dart';
import 'package:bio_mol/ui/pages/materi/02_asam_amino/02_0_struktur_protein.dart';
import 'package:bio_mol/ui/pages/materi/02_asam_amino/02_1_fungsi_protein.dart';
import 'package:bio_mol/ui/pages/materi/02_asam_amino/02_2_denaturasi_protein.dart';
import 'package:bio_mol/ui/pages/materi/02_asam_amino/02_3_latihan.dart';

class MainAsamAminoPage extends StatefulWidget {
  final int? initialPage;
  const MainAsamAminoPage({
    super.key,
    this.initialPage = 0,
  });

  @override
  State<MainAsamAminoPage> createState() => _MainAsamAminoPageState();
}

class _MainAsamAminoPageState extends State<MainAsamAminoPage> {
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
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: ((result, _) {
        if (result) {
          return;
        }
        Navigator.pushReplacementNamed(context, '/daftarMateri');
      }),
      child: Scaffold(
        backgroundColor: kBgPrimaryColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            title: Text(
              'ASAM AMINO & PROTEIN',
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
          // physics: const NeverScrollableScrollPhysics(),
          children: [
            StrukturAsamAminoPage(),
            KlasifikasiAsamAminoPage(),
            KlasifikasiAsamAminoPage2(),
            StereoisomerAsamAminoPage(),
            StrukturProteinPage(),
            FungsiProteinPage(),
            DenaturasiProteinPage(),
            LatihanAsamAminoPage(),
            // GamesAsamAmino2(),
          ],
        ),
      ),
    );
  }
}
