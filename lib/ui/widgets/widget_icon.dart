import 'package:flutter/material.dart';

class CImagetAsset extends StatelessWidget {
  final double width;
  final EdgeInsets margin;
  final String imageName;

  const CImagetAsset({
    super.key,
    required this.imageName,
    this.width = 24,
    this.margin = EdgeInsets.zero,
    // this.height = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      child: Image(
        image: AssetImage(imageName),
      ),
    );
  }
}
