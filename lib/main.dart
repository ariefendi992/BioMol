import 'package:bio_mol/ui/pages/desktop/spalsh_page_desktop.dart';
import 'package:bio_mol/ui/pages/responsive_layout.dart';
import 'package:bio_mol/ui/pages/tablet/daftar_materi_page_tablet.dart';
import 'package:bio_mol/ui/pages/tablet/pendahuluan_page_tablet.dart';
import 'package:bio_mol/ui/pages/tablet/splash_page_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bio_mol/cubit/boolean_cubit.dart';
import 'package:bio_mol/cubit/jawaban_cubit.dart';
import 'package:bio_mol/cubit/score_cubit.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/pages/mobile/daftar_materi_page.dart';
import 'package:bio_mol/ui/pages/mobile/materi/01_karbohidrat/00_karbohidrat.dart';
import 'package:bio_mol/ui/pages/mobile/materi/02_asam_amino/00_asam_amino_dan_protein.dart';
import 'package:bio_mol/ui/pages/mobile/materi/02_asam_amino/games_asam_02.dart';
import 'package:bio_mol/ui/pages/mobile/materi/03_asam_nukleat/00_asam_nukleat.dart';
import 'package:bio_mol/ui/pages/mobile/materi/04_lipida/00_lipida.dart';
import 'package:bio_mol/ui/pages/mobile/pendahuluan_page.dart';
import 'package:bio_mol/ui/pages/mobile/splash_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final orientation = MediaQuery.of(context).orientation;
    print('START MAIN');
    print('Screen Width ==>> ${screenWidth.toInt()}');
    print('Screen Height ==>> ${screenHeight.toInt()}');
    print('Orientation Screen ===> ${orientation}');
    print('END MAIN');
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BooleanCubit()),
        BlocProvider(create: (context) => JawabanCubit()),
        BlocProvider(create: (context) => ScoreCubit()),
      ],
      child: MaterialApp(
        title: 'App Media Pembelajaran',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: kBgPrimaryColor,
          fontFamily: 'Roboto',
          useMaterial3: true,
        ),
        routes: {
          '/': (context) => ResponsiveLayout(
                mobile: SplashPage(),
                tablet: SplashPageTablet(),
                desktop: SplashPageDesktop(),
              ),
          '/pendahuluan': (context) => ResponsiveLayout(
                mobile: PendahuluanPage(),
                tablet: PendahuluanPagetablet(),
              ),
          '/daftarMateri': (context) => ResponsiveLayout(
                mobile: DaftarMateriPage(),
                tablet: DaftarMateriPageTablet(),
              ),
          '/karbohidrat': (context) => KarbohidratPage(),
          '/asamAmino': (context) => AsamAminoPage(),
          '/asamNukleat': (context) => AsamNukleatPage(),
          '/lipida': (context) => LipidaPage(),
          '/gameAsamAminoIdentifikasi': (context) => GamesAsamAmino2(),
        },
      ),
    );
  }
}
