import 'package:flutter/material.dart';

class WDialogImage extends StatelessWidget {
  final String imageUrl;
  final double dialogHeight;

  const WDialogImage({
    super.key,
    required this.imageUrl,
    this.dialogHeight = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 6),
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      child: dialogHeight == 0.0
          ? Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: InteractiveViewer(
                  maxScale: 5.0,
                  minScale: 1.0,
                  boundaryMargin: EdgeInsets.all(double.infinity),
                  child: Image.asset(
                    imageUrl,
                    width: double.infinity,
                    // height: 500,
                    // height: 150,
                  ),
                ),
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
              width: double.infinity,
              height: dialogHeight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: InteractiveViewer(
                  maxScale: 5.0,
                  minScale: 1.0,
                  boundaryMargin: EdgeInsets.all(double.infinity),
                  child: Image.asset(
                    imageUrl,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
    );
  }
}
