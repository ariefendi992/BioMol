import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/widgets/widget_input_jawaban.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';

class GamesAsamNukleat1Page extends StatefulWidget {
  const GamesAsamNukleat1Page({super.key});

  @override
  State<GamesAsamNukleat1Page> createState() => _GamesAsamNukleat1PageState();
}

class _GamesAsamNukleat1PageState extends State<GamesAsamNukleat1Page> {
  TextEditingController controllerNomor1 = TextEditingController();
  TextEditingController controllerNomor2 = TextEditingController();
  TextEditingController controllerNomor3 = TextEditingController();
  TextEditingController controllerNomor4 = TextEditingController();
  TextEditingController controllerNomor5 = TextEditingController();
  TextEditingController controllerNomor6 = TextEditingController();
  TextEditingController controllerNomor7 = TextEditingController();
  TextEditingController controllerNomor8 = TextEditingController();
  TextEditingController controllerNomor9 = TextEditingController();
  TextEditingController controllerNomor10 = TextEditingController();

  String nomor1 = '_____';
  String nomor2 = '_____';
  String nomor3 = '_____';
  String nomor4 = '_____';
  String nomor5 = '_____';
  String nomor6 = '_____';
  String nomor7 = '_____';
  String nomor8 = '_____';
  String nomor9 = '_____';
  String nomor10 = '_____';
  // String sentence = 'Monomer asam nukleat adalah (1) _____'
  //     ' yang terdiri dari 3 komponen yaitu (2) _____ '
  //     '(3) _____ dan '
  //     '(4) _____. Antara monomer-monomer tersebut dihubungkan dengan ikatan '
  //     '(5) _____. Basa yang dimiliki oleh RNA adalah '
  //     '(6) _____ '
  //     '(7) _____ '
  //     '(8) _____ dan'
  //     '(9) _____ Sekuen yang terdapat pada 2 untai ganda DNA bersifat '
  //     '(10) _____ Anti paralel.';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: AppBar(
          title: Text(
            'ASAM NUKLEAT GAMES',
            style: blackTextStyle.copyWith(
              fontSize: 24,
              letterSpacing: 1.2,
              fontFamily: caveatBrush,
            ),
          ),
          // centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.refresh),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: MediaQuery.of(context).size.height,
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WTitleSubtitle(
                  title: '1. Lengkapi jawaban dibawah ini ',
                  margin: const EdgeInsets.only(top: 12, bottom: 6),
                ),
                // Text(
                //   'Monomer asam nukleat adalah (1) $nomor1'
                //   ' yang terdiri dari 3 komponen yaitu (2) $nomor2 '
                //   '(3) _____ dan '
                //   '(4) _____. Antara monomer-monomer tersebut dihubungkan dengan ikatan '
                //   '(5) _____. Basa yang dimiliki oleh RNA adalah '
                //   '(6) _____ '
                //   '(7) _____ '
                //   '(8) _____ dan'
                //   '(9) _____ Sekuen yang terdapat pada 2 untai ganda DNA bersifat '
                //   '(10) _____ Anti paralel.',
                //   style: blackTextStyle.copyWith(
                //     fontFamily: caveatBrush,
                //     fontSize: 18,
                //   ),
                //   textAlign: TextAlign.justify,
                // ),
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Monomer asam nukleat adalah  ',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                      TextSpan(
                        text: '(1) $nomor1',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 16,
                          fontWeight: regular,
                          color: kBlueColor1,
                        ),
                      ),
                      TextSpan(
                        text: ' yang terdiri dari 3 komponen yaitu ',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                      TextSpan(
                        text: '(2) $nomor2 ',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 16,
                          fontWeight: regular,
                          color: kGreenColor1,
                        ),
                      ),
                      TextSpan(
                        text: '(3) $nomor3 ',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 16,
                          fontWeight: regular,
                          color: kBlackColor2,
                        ),
                      ),
                      TextSpan(
                        text: 'dan ',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                      TextSpan(
                        text: '(4) $nomor4',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 16,
                          fontWeight: regular,
                          color: kRedColor1,
                        ),
                      ),
                      TextSpan(
                        text:
                            '. Antara monomer-monomer tersebut dihubungkan dengan ikatan ',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                      TextSpan(
                        text: '(5) $nomor5',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 16,
                          fontWeight: regular,
                          color: kOrangeColor1,
                        ),
                      ),
                      TextSpan(
                        text: '. Basa yang dimiliki oleh RNA adalah ',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                      TextSpan(
                        text: '(6) $nomor6 ',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 16,
                          fontWeight: regular,
                          color: kBgTopLinearColor,
                        ),
                      ),
                      TextSpan(
                        text: '(7) $nomor7 ',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 16,
                          fontWeight: regular,
                          color: kBlackColor2,
                        ),
                      ),
                      TextSpan(
                        text: '(8) $nomor8 ',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 16,
                          fontWeight: regular,
                          color: kGreenColor1,
                        ),
                      ),
                      TextSpan(
                        text: 'dan ',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                      TextSpan(
                        text: '(9) $nomor9',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 16,
                          fontWeight: regular,
                          color: kRedColor1,
                        ),
                      ),
                      TextSpan(
                        text:
                            ' Sekuen yang terdapat pada 2 untai ganda DNA bersifat ',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                      TextSpan(
                        text: '(10) $nomor10',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 16,
                          fontWeight: regular,
                          color: kOrangeColor1,
                        ),
                      ),
                      TextSpan(
                        text: ' Anti paralel ',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  alignment: Alignment.center,
                  child: Wrap(
                    spacing: 16,
                    // runSpacing: 16,
                    // runAlignment: WrapAlignment.center,
                    children: [
                      WInputJawaban(
                        controller: controllerNomor1,
                        onChange: (text) {
                          setState(() {
                            nomor1 = text.isEmpty ? '_____' : text;
                          });
                        },
                      ),
                      WInputJawaban(
                        controller: controllerNomor2,
                        labelText: 'Jawaban No.2',
                        onChange: (text) {
                          setState(() {
                            nomor2 = text.isEmpty ? '_____' : text;
                          });
                        },
                      ),
                      WInputJawaban(
                        controller: controllerNomor3,
                        labelText: 'Jawaban No.3',
                        onChange: (text) {
                          setState(() {
                            nomor3 = text.isEmpty ? '_____' : text;
                          });
                        },
                      ),
                      WInputJawaban(
                        controller: controllerNomor4,
                        labelText: 'Jawaban No.4',
                        onChange: (text) {
                          setState(() {
                            nomor4 = text.isEmpty ? '_____' : text;
                          });
                        },
                      ),
                      WInputJawaban(
                        controller: controllerNomor5,
                        labelText: 'Jawaban No.5',
                        onChange: (text) {
                          setState(() {
                            nomor5 = text.isEmpty ? '_____' : text;
                          });
                        },
                      ),
                      WInputJawaban(
                        controller: controllerNomor6,
                        labelText: 'Jawaban No.6',
                        onChange: (text) {
                          setState(() {
                            nomor6 = text.isEmpty ? '_____' : text;
                          });
                        },
                      ),
                      WInputJawaban(
                        controller: controllerNomor7,
                        labelText: 'Jawaban No.7',
                        onChange: (text) {
                          setState(() {
                            nomor7 = text.isEmpty ? '_____' : text;
                          });
                        },
                      ),
                      WInputJawaban(
                        controller: controllerNomor8,
                        labelText: 'Jawaban No.8',
                        onChange: (text) {
                          setState(() {
                            nomor8 = text.isEmpty ? '_____' : text;
                          });
                        },
                      ),
                      WInputJawaban(
                        controller: controllerNomor9,
                        labelText: 'Jawaban No.9',
                        onChange: (text) {
                          setState(() {
                            nomor9 = text.isEmpty ? '_____' : text;
                          });
                        },
                      ),
                      WInputJawaban(
                        controller: controllerNomor10,
                        labelText: 'Jawaban No.10',
                        onChange: (text) {
                          setState(() {
                            nomor10 = text.isEmpty ? '_____' : text;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 44, bottom: 32),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return GamesAsamNukleat1Page();
                      }));
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: kBlueColor1,
                      elevation: 6,
                      shadowColor: kBlackColor.withAlpha(100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Container(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Game Selanjutnya',
                            style: blackTextStyle.copyWith(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Icon(
                            Icons.keyboard_double_arrow_right_outlined,
                            color: kBlackColor2,
                            size: 28,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
