import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/pages/materi/03_asam_nukleat/01_0_fungsi_asam_nukleat.dart';
import 'package:bio_mol/ui/pages/materi/03_asam_nukleat/02_0_struktur_asam_nukleat.dart';
import 'package:bio_mol/ui/pages/materi/03_asam_nukleat/02_1_dna.dart';
import 'package:bio_mol/ui/pages/materi/03_asam_nukleat/02_2_rna.dart';
import 'package:bio_mol/ui/pages/materi/03_asam_nukleat/03_go_games.dart';

class MainAsamNukleatPage extends StatefulWidget {
  final int? initialPage;
  const MainAsamNukleatPage({
    super.key,
    this.initialPage = 0,
  });

  @override
  State<MainAsamNukleatPage> createState() => _MainAsamNukleatPageState();
}

class _MainAsamNukleatPageState extends State<MainAsamNukleatPage> {
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
            'ASAM NUKLEAT',
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
          FungsiAsamNukleat0(),
          StrukturAsamNukleat0(),
          DnaPage(),
          RNAPage(),
          GoGamesAsamNukleat(),
        ],
      ),
    );
  }
}
