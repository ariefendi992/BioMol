import 'package:bio_mol/ui/pages/materi/03_asam_nukleat/games_asam_nukleat2.dart';
import 'package:bio_mol/ui/pages/materi/03_asam_nukleat/main_asam_nukleat.dart';
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

  String jawabanNo1 = 'Nukleotida';
  String jawabanNo2 = 'Basa Nitrogen';
  String jawabanNo3 = 'Gula Pentosa';
  String jawabanNo4 = 'Gugus Fosforik';
  String jawabanNo5 = 'Fosfodiester';
  String jawabanNo6 = 'Urasil';
  String jawabanNo7 = 'Sitosin';
  String jawabanNo8 = 'Adenin';
  String jawabanNo9 = 'Guanin';
  String jawabanNo10 = 'Anti paralel';

  int scoreNomor1 = 0;
  int scoreNomor2 = 0;
  int scoreNomor3 = 0;
  int scoreNomor4 = 0;
  int scoreNomor5 = 0;
  int scoreNomor6 = 0;
  int scoreNomor7 = 0;
  int scoreNomor8 = 0;
  int scoreNomor9 = 0;
  int scoreNomor10 = 0;

  int totalScore = 0;

  void resetString() {
    controllerNomor1.clear();
    controllerNomor2.clear();
    controllerNomor3.clear();
    controllerNomor4.clear();
    controllerNomor5.clear();
    controllerNomor6.clear();
    controllerNomor7.clear();
    controllerNomor8.clear();
    controllerNomor9.clear();
    controllerNomor10.clear();

    nomor1 = '_____';
    nomor2 = '_____';
    nomor3 = '_____';
    nomor4 = '_____';
    nomor5 = '_____';
    nomor6 = '_____';
    nomor7 = '_____';
    nomor8 = '_____';
    nomor9 = '_____';
    nomor10 = '_____';
    totalScore = 0;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          return;
        }
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (_) => MainAsamNukleatPage(
                      initialPage: 4,
                    )),
            (_) => false);
      },
      child: Scaffold(
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
                onPressed: () {
                  setState(() {
                    resetString();
                  });
                },
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
                            if (jawabanNo1.toLowerCase() ==
                                text.toLowerCase()) {
                              setState(() {
                                scoreNomor1 = 5;
                              });
                            } else {
                              setState(() {
                                scoreNomor1 = 0;
                              });
                            }

                            // totalScore = scoreNomor1 + scoreNomor2 + scoreNomor3;

                            // print('Total Score ==> $totalScore');

                            setState(() {
                              nomor1 = text.isEmpty ? '_____' : text;
                            });
                          },
                        ),
                        WInputJawaban(
                          controller: controllerNomor2,
                          labelText: 'Jawaban No.2',
                          onChange: (text) {
                            if (jawabanNo2.toLowerCase() ==
                                text.toLowerCase()) {
                              setState(() {
                                scoreNomor2 = 5;
                              });
                            } else {
                              setState(() {
                                scoreNomor2 = 0;
                              });
                            }

                            // totalScore = scoreNomor1 + scoreNomor2 + scoreNomor3;

                            // print('Total Score ==> $totalScore');
                            setState(() {
                              nomor2 = text.isEmpty ? '_____' : text;
                            });
                          },
                        ),
                        WInputJawaban(
                          controller: controllerNomor3,
                          labelText: 'Jawaban No.3',
                          onChange: (text) {
                            if (jawabanNo3.toLowerCase() ==
                                text.toLowerCase()) {
                              setState(() {
                                scoreNomor3 = 5;
                              });
                            } else {
                              setState(() {
                                scoreNomor3 = 0;
                              });
                            }

                            setState(() {
                              nomor3 = text.isEmpty ? '_____' : text;
                            });
                          },
                        ),
                        WInputJawaban(
                          controller: controllerNomor4,
                          labelText: 'Jawaban No.4',
                          onChange: (text) {
                            if (jawabanNo4.toLowerCase() ==
                                text.toLowerCase()) {
                              setState(() {
                                scoreNomor4 = 5;
                              });
                            } else {
                              setState(() {
                                scoreNomor4 = 0;
                              });
                            }

                            setState(() {
                              nomor4 = text.isEmpty ? '_____' : text;
                            });
                          },
                        ),
                        WInputJawaban(
                          controller: controllerNomor5,
                          labelText: 'Jawaban No.5',
                          onChange: (text) {
                            if (jawabanNo5.toLowerCase() ==
                                text.toLowerCase()) {
                              setState(() {
                                scoreNomor5 = 5;
                              });
                            } else {
                              setState(() {
                                scoreNomor5 = 0;
                              });
                            }

                            setState(() {
                              nomor5 = text.isEmpty ? '_____' : text;
                            });
                          },
                        ),
                        WInputJawaban(
                          controller: controllerNomor6,
                          labelText: 'Jawaban No.6',
                          onChange: (text) {
                            if (jawabanNo6.toLowerCase() ==
                                text.toLowerCase()) {
                              setState(() {
                                scoreNomor6 = 5;
                              });
                            } else {
                              setState(() {
                                scoreNomor6 = 0;
                              });
                            }

                            setState(() {
                              nomor6 = text.isEmpty ? '_____' : text;
                            });
                          },
                        ),
                        WInputJawaban(
                          controller: controllerNomor7,
                          labelText: 'Jawaban No.7',
                          onChange: (text) {
                            if (jawabanNo7.toLowerCase() ==
                                text.toLowerCase()) {
                              setState(() {
                                scoreNomor7 = 5;
                              });
                            } else {
                              setState(() {
                                scoreNomor7 = 0;
                              });
                            }

                            setState(() {
                              nomor7 = text.isEmpty ? '_____' : text;
                            });
                          },
                        ),
                        WInputJawaban(
                          controller: controllerNomor8,
                          labelText: 'Jawaban No.8',
                          onChange: (text) {
                            if (jawabanNo8.toLowerCase() ==
                                text.toLowerCase()) {
                              setState(() {
                                scoreNomor8 = 5;
                              });
                            } else {
                              setState(() {
                                scoreNomor8 = 0;
                              });
                            }

                            setState(() {
                              nomor8 = text.isEmpty ? '_____' : text;
                            });
                          },
                        ),
                        WInputJawaban(
                          controller: controllerNomor9,
                          labelText: 'Jawaban No.9',
                          onChange: (text) {
                            if (jawabanNo9.toLowerCase() ==
                                text.toLowerCase()) {
                              setState(() {
                                scoreNomor9 = 5;
                              });
                            } else {
                              setState(() {
                                scoreNomor9 = 0;
                              });
                            }

                            setState(() {
                              nomor9 = text.isEmpty ? '_____' : text;
                            });
                          },
                        ),
                        WInputJawaban(
                          controller: controllerNomor10,
                          labelText: 'Jawaban No.10',
                          onChange: (text) {
                            if (jawabanNo10.toLowerCase() ==
                                text.toLowerCase()) {
                              setState(() {
                                scoreNomor10 = 5;
                              });
                            } else {
                              setState(() {
                                scoreNomor10 = 0;
                              });
                            }

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
                        if (controllerNomor1.text.isEmpty ||
                            controllerNomor2.text.isEmpty ||
                            controllerNomor3.text.isEmpty ||
                            controllerNomor4.text.isEmpty ||
                            controllerNomor5.text.isEmpty ||
                            controllerNomor6.text.isEmpty ||
                            controllerNomor7.text.isEmpty ||
                            controllerNomor8.text.isEmpty ||
                            controllerNomor9.text.isEmpty ||
                            controllerNomor10.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Harap lengkapi jawaban Anda dahulu!',
                                style: blackTextStyle.copyWith(
                                  color: kWhiteColor,
                                  fontWeight: medium,
                                ),
                              ),
                              backgroundColor: kRedColor1,
                              duration: Duration(seconds: 3),
                            ),
                          );
                        } else {
                          totalScore = scoreNomor1 +
                              scoreNomor2 +
                              scoreNomor3 +
                              scoreNomor4 +
                              scoreNomor5 +
                              scoreNomor6 +
                              scoreNomor7 +
                              scoreNomor8 +
                              scoreNomor9 +
                              scoreNomor10;

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return GamesAsamNukleat2Page(totalScore);
                          }));
                        }
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
                              'Selanjutnya',
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
      ),
    );
  }
}
