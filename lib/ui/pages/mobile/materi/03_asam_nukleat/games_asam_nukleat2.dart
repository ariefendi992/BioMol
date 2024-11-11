import 'package:bio_mol/cubit/jawaban_cubit.dart';
import 'package:bio_mol/cubit/score_cubit.dart';
import 'package:bio_mol/models/item_model.dart';
import 'package:bio_mol/shared/theme.dart';
import 'package:bio_mol/ui/pages/mobile/materi/03_asam_nukleat/result_games_asam_nukleat.dart';
import 'package:bio_mol/ui/widgets/widget_drag_asam_amino2.dart';
import 'package:bio_mol/ui/widgets/widget_title_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GamesAsamNukleat2Page extends StatefulWidget {
  final int skorSebelum;
  const GamesAsamNukleat2Page(this.skorSebelum, {super.key});

  @override
  State<GamesAsamNukleat2Page> createState() => _GamesAsamNukleat2PageState();
}

class _GamesAsamNukleat2PageState extends State<GamesAsamNukleat2Page> {
  TextEditingController playerNameController = TextEditingController();

  String jawabanNo1 = 'Timin';
  String jawabanNo2 = 'Adenin';
  String jawabanNo3 = 'Guanin';
  String jawabanNo4 = 'Sitosin';

  String dragTarget1 = '';
  String dragTarget2 = '';
  String dragTarget3 = '';
  String dragTarget4 = '';

  double scorejawabanNo1 = 0;
  double scorejawabanNo2 = 0;
  double scorejawabanNo3 = 0;
  double scorejawabanNo4 = 0;

  clearTarget() {
    dragTarget1 = '';
    dragTarget2 = '';
    dragTarget3 = '';
    dragTarget4 = '';

    scorejawabanNo1 = 0;
    scorejawabanNo2 = 0;
    scorejawabanNo3 = 0;
    scorejawabanNo4 = 0;
  }

  @override
  void initState() {
    super.initState();
    context.read<JawabanCubit>().fetchDataAsamNukleat();
    context.read<ScoreCubit>().resetScore();
    widget.skorSebelum;
    print('Skor sebelum ==> ${widget.skorSebelum}');
  }

  @override
  Widget build(BuildContext context) {
    Widget kunciJawaban(List<ItemModel> items) {
      return Wrap(
        spacing: 6,
        runSpacing: 10,
        runAlignment: WrapAlignment.center,
        children: items.map((e) {
          return WidgetDragAsamAmino2(e);
        }).toList(),
      );
    }

    return Scaffold(
      backgroundColor: kBgPrimaryColor,
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
                  clearTarget();
                  // context.read<JawabanCubit>().recallDataAsamNukleat();
                });
              },
              icon: Icon(Icons.refresh),
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WTitleSubtitle(
                title: '2. Lengkapi jawaban dibawah ini ',
                margin: const EdgeInsets.only(top: 12, bottom: 20),
              ),
              BlocBuilder<JawabanCubit, JawabanState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Container(
                        height: 244,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/games_images/gambar_asam_nukleat2.png'),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15,
                              left: 100,
                              child: DragTarget<ItemModel>(
                                builder: (context, accepted, rejected) {
                                  return Container(
                                    height: 28,
                                    width: 110,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: kWhiteColor,
                                      border: Border.all(
                                        color: kBlackColor2,
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      '${dragTarget1}',
                                      style: blackTextStyle.copyWith(
                                        fontFamily: caveatBrush,
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  );
                                },
                                onAcceptWithDetails: (details) {
                                  if (jawabanNo1 == details.data.name) {
                                    // context
                                    //     .read<ScoreCubit>()
                                    //     .incrementeScore();
                                    setState(() {
                                      scorejawabanNo1 = 12.5;
                                    });
                                  }
                                  context
                                      .read<JawabanCubit>()
                                      .removeitem(details.data.id);
                                  setState(() {
                                    dragTarget1 = details.data.name;
                                  });
                                },
                                onWillAcceptWithDetails: (details) {
                                  setState(() {
                                    details.data.isAccepted = true;
                                  });
                                  return true;
                                },
                                onLeave: (details) {
                                  setState(() {
                                    details?.isAccepted = false;
                                  });
                                },
                              ),
                            ),
                            Positioned(
                              top: 12,
                              right: 30,
                              child: DragTarget<ItemModel>(
                                builder: (context, accepted, rejected) {
                                  return Container(
                                    height: 28,
                                    width: 110,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: kWhiteColor,
                                      border: Border.all(
                                        color: kBlackColor2,
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      '${dragTarget2}',
                                      style: blackTextStyle.copyWith(
                                        fontFamily: caveatBrush,
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  );
                                },
                                onAcceptWithDetails: (details) {
                                  if (jawabanNo2 == details.data.name) {
                                    setState(() {
                                      scorejawabanNo2 = 12.5;
                                    });
                                  }
                                  context
                                      .read<JawabanCubit>()
                                      .removeitem(details.data.id);

                                  setState(() {
                                    dragTarget2 = details.data.name;
                                  });
                                },
                              ),
                            ),
                            Positioned(
                              bottom: 15,
                              left: 110,
                              child: DragTarget<ItemModel>(
                                builder: (context, accepted, rejected) {
                                  return Container(
                                    height: 28,
                                    width: 110,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: kWhiteColor,
                                      border: Border.all(
                                        color: kBlackColor2,
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      '${dragTarget3}',
                                      style: blackTextStyle.copyWith(
                                        fontFamily: caveatBrush,
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  );
                                },
                                onAcceptWithDetails: (details) {
                                  if (jawabanNo3 == details.data.name) {
                                    setState(() {
                                      scorejawabanNo3 = 12.5;
                                    });
                                  }
                                  context
                                      .read<JawabanCubit>()
                                      .removeitem(details.data.id);

                                  setState(() {
                                    dragTarget3 = details.data.name;
                                  });
                                },
                              ),
                            ),
                            Positioned(
                              bottom: 15,
                              right: 20,
                              child: DragTarget<ItemModel>(
                                builder: (context, accepted, rejected) {
                                  return Container(
                                    height: 28,
                                    width: 110,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: kWhiteColor,
                                      border: Border.all(
                                        color: kBlackColor2,
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      '${dragTarget4}',
                                      style: blackTextStyle.copyWith(
                                        fontFamily: caveatBrush,
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  );
                                },
                                onAcceptWithDetails: (details) {
                                  if (jawabanNo4 == details.data.name) {
                                    setState(() {
                                      scorejawabanNo4 = 12.5;
                                    });
                                  }
                                  context
                                      .read<JawabanCubit>()
                                      .removeitem(details.data.id);

                                  setState(() {
                                    dragTarget4 = details.data.name;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        alignment: Alignment.center,
                        child: kunciJawaban(state.items),
                      ),
                    ],
                  );
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 32),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    if (dragTarget1.isEmpty ||
                        dragTarget2.isEmpty ||
                        dragTarget3.isEmpty ||
                        dragTarget4.isEmpty) {
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
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                'Nama Anda!',
                                style: blackTextStyle.copyWith(
                                  fontFamily: caveatBrush,
                                  fontSize: 20,
                                ),
                              ),
                              content: TextField(
                                controller: playerNameController,
                                decoration: InputDecoration(
                                  hintText: 'Input nama anda!',
                                  hintStyle: TextStyle(
                                      fontFamily: caveatBrush, fontSize: 16),
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ResultGamesAsamNukleatPage(
                                          playerName: playerNameController.text,
                                          skor1: widget.skorSebelum,
                                          skor2: scorejawabanNo1 +
                                              scorejawabanNo2 +
                                              scorejawabanNo3 +
                                              scorejawabanNo4,
                                        ),
                                      ),
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: kBlueColor1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: Text(
                                    'SUBMIT',
                                    style: blackTextStyle.copyWith(
                                      fontWeight: medium,
                                    ),
                                  ),
                                )
                              ],
                            );
                          });
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
                    width: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Selesai',
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
    );
  }
}
