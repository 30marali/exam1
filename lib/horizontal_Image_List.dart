
import 'package:flutter/material.dart';

class HorizontalImageList extends StatelessWidget {
  final List<String> imagePaths;

  const HorizontalImageList({Key? key, required this.imagePaths})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 1,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Image.asset(imagePaths[index]),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
      ),
    );
  }
}