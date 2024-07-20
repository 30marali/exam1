import 'package:c11_exam_friday/screen1.dart';
import 'package:c11_exam_friday/screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MoodyScreen.routeName,
      routes: {
        AudiBooksScreen.routeName : (context)=> AudiBooksScreen(),
        MoodyScreen.routeName : (context)=> MoodyScreen(),
      },
    );
  }
}






