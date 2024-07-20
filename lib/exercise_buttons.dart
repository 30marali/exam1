
import 'package:flutter/material.dart';

class ExerciseButtons extends StatelessWidget {
  final List<String> imagePaths;

  const ExerciseButtons({Key? key, required this.imagePaths}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Container(
                width: 120,
                height: 70,
                child: Image.asset(imagePaths[0]),
              ),
            ),
            SizedBox(width: 50),
            ElevatedButton(
              onPressed: () {},
              child: Container(
                width: 120,
                height: 70,
                child: Image.asset(imagePaths[1]),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Container(
                width: 120,
                height: 70,
                child: Image.asset(imagePaths[2]),
              ),
            ),
            SizedBox(width: 50),
            ElevatedButton(
              onPressed: () {},
              child: Container(
                width: 120,
                height: 70,
                child: Image.asset(imagePaths[3]),
              ),
            ),
          ],
        ),
      ],
    );
  }
}