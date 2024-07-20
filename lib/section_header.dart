import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String buttonImage;

  const SectionHeader({
    Key? key,
    required this.title,
    required this.buttonImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5.0, left: 20, bottom: 5),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(top: 5.0, left: 20, bottom: 5),
          child: Image.asset(
            buttonImage,
            width: 90,
            height: 45,
          ),
        ),
      ],
    );
  }
}