import 'package:flutter/material.dart';


class RowReusableComponent extends StatelessWidget {
   String title;
   String actionText;
   double titleSize;
   double actionTextSize;

   RowReusableComponent({
    Key? key,
    required this.title,
    required this.actionText,
    required this.titleSize,
    required this.actionTextSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: titleSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            actionText,
            style: TextStyle(
              fontSize: actionTextSize,
              fontWeight: FontWeight.w500,
              color: Color(0xFF4838D1),
            ),
          ),
        ),
      ],
    );
  }
}


