import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bio_mol/cubit/boolean_cubit.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/pages/materi/01_karbohidrat/01_pengertian_karbohidrat.dart';
import 'package:bio_mol/ui/pages/materi/01_karbohidrat/02_struktur_karbohidrat.dart';
import 'package:bio_mol/ui/pages/materi/01_karbohidrat/03_2_golongan_karbohidrat.dart';
import 'package:bio_mol/ui/pages/materi/01_karbohidrat/03_3_golongan_karbohidrat.dart';
import 'package:bio_mol/ui/pages/materi/01_karbohidrat/03_4_golongan_karbohidrat.dart';
import 'package:bio_mol/ui/pages/materi/01_karbohidrat/03_5_golongan_karbohidrat.dart';
import 'package:bio_mol/ui/pages/materi/01_karbohidrat/03_0_golongan_karbohidrat.dart';
import 'package:bio_mol/ui/pages/materi/01_karbohidrat/03_1_golongan_karbohidrat.dart';
import 'package:bio_mol/ui/pages/materi/01_karbohidrat/04_0_fungsi_karbohidrat.dart';
import 'package:bio_mol/ui/pages/materi/01_karbohidrat/05_0_identifikasi_karbohidrat.dart';

class MainKarbohidratPage extends StatefulWidget {
  final int? initialPage;
  const MainKarbohidratPage({super.key, this.initialPage = 0});

  @override
  State<MainKarbohidratPage> createState() => _MainKarbohidratPageState();
}

class _MainKarbohidratPageState extends State<MainKarbohidratPage> {
  late PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.initialPage!);
    context.read<BooleanCubit>().defaultToggle();
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
        preferredSize: Size.fromHeight(55),
        child: AppBar(
          title: Text(
            'KARBOHIDRAT',
            style: blackTextStyle.copyWith(
              fontSize: 22,
              // fontWeight: bold,
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
          // pengertianKarbohidrat(),
          // strukturKarbohidrat(),
          PengertianKarbohidratPage(),
          StrukturKarbohidratPage(),
          GolonganKarbohidratPage(),
          GolonganKarbohidratBagian1(),
          GolonganKarbohidratBagian2(),
          GolonganKarbohidratBagian3(),
          GolonganKarbohidratBagian4(),
          GolonganKarbohidratBagian5(),
          FungsiKarbohidratPage(),
          IdentifikasiKarbohidratPage(),
        ],
      ),
    );
  }
}
