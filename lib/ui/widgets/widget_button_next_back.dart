import 'package:flutter/material.dart';
import 'package:bio_mol/shared/theme.dart';

class WButtonNextOrBack extends StatelessWidget {
  final Function() onPressed;
  final IconData icon;
  final EdgeInsets margin;
  final bool postitionCenter;

  const WButtonNextOrBack({
    super.key,
    required this.onPressed,
    this.icon = Icons.arrow_forward_ios,
    this.margin = EdgeInsets.zero,
    this.postitionCenter = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: kBlueColor1, shape: BoxShape.circle),
      child: IconButton(
        padding: postitionCenter ? EdgeInsets.only(left: 10) : EdgeInsets.zero,
        alignment: Alignment.center,
        icon: Icon(
          icon,
          size: 32,
          color: kBlackColor2,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
