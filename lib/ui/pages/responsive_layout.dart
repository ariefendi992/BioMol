import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;
  const ResponsiveLayout({
    super.key,
    this.mobile,
    this.tablet,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        print('RESPONSIVE LAYOUTE PAGE');
        print('Phone Mode');
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
        return mobile!;
      } else if (constraints.maxWidth >= 600 && constraints.maxWidth < 1200) {
        print('RESPONSIVE LAYOUTE PAGE');
        print('Tablet Mode');
        return tablet!;
      } else {
        print('RESPONSIVE LAYOUTE PAGE');
        print('Desktop Mode');
        return desktop!;
      }
    });
  }
}
