import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';

class ResultGameAsamAminoPage extends StatefulWidget {
  final int skor1;
  final int skor2;
  final String playerName;
  const ResultGameAsamAminoPage({
    super.key,
    required this.playerName,
    required this.skor1,
    required this.skor2,
  });

  @override
  State<ResultGameAsamAminoPage> createState() =>
      _ResultGameAsamAminoPageState();
}

class _ResultGameAsamAminoPageState extends State<ResultGameAsamAminoPage> {
  @override
  void initState() {
    super.initState();
    print('Player Name == ${widget.playerName}');
    print('Skor 1 == ${widget.skor1}');
    print('Skor 2 == ${widget.skor2}');
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: ((didpop, _) {
        if (didpop) {
          return;
        }
        Navigator.pushReplacementNamed(context, '/daftarMateri');
      }),
      child: Scaffold(
        backgroundColor: kBgPrimaryColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(44),
          child: AppBar(
            title: Text(
              'Asam Amino',
              style: blackTextStyle.copyWith(
                fontFamily: caveatBrush,
                fontSize: 26,
              ),
            ),
            centerTitle: true,
            automaticallyImplyLeading: false,
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 260,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: kGreenColor1,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: kGreenColor1.withAlpha(100),
                          blurRadius: 20,
                          offset: Offset(2, 8),
                        )
                      ]),
                  child: Column(
                    children: [
                      Text(
                        'Result Games :',
                        style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            fontSize: 24,
                            color: kWhiteColor,
                            height: 1),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '${widget.playerName.toUpperCase()}',
                        style: blackTextStyle.copyWith(
                          fontFamily: caveatBrush,
                          fontSize: 32,
                          color: kWhiteColor,
                          height: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 18,
                  ),
                  width: 260,
                  decoration: BoxDecoration(
                    color: kGreenColor1,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      topLeft: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: kGreenColor1.withAlpha(100),
                        blurRadius: 20,
                        offset: Offset(2, 8),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      // Row(
                      //   children: [
                      //     Text(
                      //       '1. Klasifikasi',
                      //       style: blackTextStyle.copyWith(
                      //         fontFamily: caveatBrush,
                      //         color: kWhiteColor,
                      //         fontSize: 22,
                      //       ),
                      //     ),
                      //     Spacer(),
                      //     Text(
                      //       '${widget.skor1}',
                      //       style: blackTextStyle.copyWith(
                      //         fontFamily: caveatBrush,
                      //         color: kWhiteColor,
                      //         fontSize: 22,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // const SizedBox(height: 16),
                      // Row(
                      //   children: [
                      //     Text(
                      //       '2. Identifikasi',
                      //       style: blackTextStyle.copyWith(
                      //         fontFamily: caveatBrush,
                      //         color: kWhiteColor,
                      //         fontSize: 22,
                      //       ),
                      //     ),
                      //     Spacer(),
                      //     Text(
                      //       '${widget.skor2}',
                      //       style: blackTextStyle.copyWith(
                      //         fontFamily: caveatBrush,
                      //         color: kWhiteColor,
                      //         fontSize: 22,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // const SizedBox(height: 16),
                      Center(
                        child: Text(
                          'Total Skor : ${widget.skor2}',
                          style: blackTextStyle.copyWith(
                            fontFamily: caveatBrush,
                            color: kWhiteColor,
                            fontSize: 28,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: kBlueColor1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 8,
                        shadowColor: kBlackColor2.withAlpha(100),
                        padding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/asamNukleat');
                      },
                      child: Icon(
                        Icons.list,
                        size: 32,
                        color: kBlackColor2,
                      ),
                    ),
                    const SizedBox(width: 24),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: kRedColor1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 8,
                        shadowColor: kBlackColor2.withAlpha(100),
                        padding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                      ),
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context,
                            '/gameAsamAminoIdentifikasi', (route) => false);
                      },
                      child: Icon(
                        Icons.replay_outlined,
                        size: 32,
                        color: kWhiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 80)
            ],
          ),
        ),
      ),
    );
  }
}
