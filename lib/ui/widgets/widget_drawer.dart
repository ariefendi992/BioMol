import 'package:bio_mol/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WDrawer extends StatelessWidget {
  const WDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // width: MediaQuery.of(context).size.width * 0.6,
      backgroundColor: kBgPrimaryColor,
      child: ListView(
        children: [
          // DrawerHeader(
          //   padding: const EdgeInsets.all(0),
          //   decoration: BoxDecoration(
          //     color: kBgPrimaryColor,
          //   ),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Image.asset(
          //         'assets/images/logo_app.png',
          //         height: 80,
          //       )
          //     ],
          //   ),
          // ),
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: kBgPrimaryColor),
            accountName: Text(
              'BioMol',
              style: blackTextStyle.copyWith(
                  fontFamily: caveatBrush, fontSize: 32, height: 0.5),
            ),
            accountEmail: Text(
              'Booklet Biokimia Part I',
              style: blackTextStyle.copyWith(
                fontFamily: caveatBrush,
                fontSize: 20,
              ),
            ),
            currentAccountPicture: ClipOval(
              child: Image.asset(
                'assets/images/logo_app.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.my_library_books),
            title: Text(
              'Materi Karbohidrat',
              style: blackTextStyle.copyWith(
                fontFamily: caveatBrush,
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/karbohidrat', (_) => false);
            },
          ),
          ListTile(
            leading: Icon(Icons.my_library_books),
            title: Text(
              'Materi Asam Amino & Protein',
              style: blackTextStyle.copyWith(
                fontFamily: caveatBrush,
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, ('/asamAmino'), (_) => false);
            },
          ),
          ListTile(
            leading: Icon(Icons.my_library_books),
            title: Text(
              'Asam Nukleat',
              style: blackTextStyle.copyWith(
                fontFamily: caveatBrush,
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/asamNukleat', (_) => false);
            },
          ),
          ListTile(
            leading: Icon(Icons.my_library_books),
            title: Text(
              'Lipida',
              style: blackTextStyle.copyWith(
                fontFamily: caveatBrush,
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/asamNukleat', (_) => false);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout_rounded,
            ),
            title: Text(
              'Keluar',
              style: blackTextStyle.copyWith(
                fontFamily: caveatBrush,
                fontSize: 18,
              ),
            ),
            onTap: () {
              SystemNavigator.pop();
            },
          ),
        ],
      ),
    );
  }
}
