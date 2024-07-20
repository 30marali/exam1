// Reusable widget for carousel items
import 'package:flutter/material.dart';

class CarouselImageItem extends StatelessWidget {
  String imagePath;

  CarouselImageItem({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}