import 'package:c11_exam_friday/exercise_buttons.dart';
import 'package:c11_exam_friday/feature_Page_View.dart';
import 'package:c11_exam_friday/horizontal_Image_List.dart';
import 'package:c11_exam_friday/screen2_reusable_component.dart';
import 'package:c11_exam_friday/section_header.dart';
import 'package:flutter/material.dart';



class MoodyScreen extends StatelessWidget {
  static const String routeName = 'MoodyScreen';

  MoodyScreen({super.key});

  PageController pageController =
  PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Image.asset(
            "assets/images/logo_Moody.png",
            height: 40,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Badge(
              label: Text(
                '3',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Icon(
                Icons.notifications,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          GreetingMessage(name: "Sara Rose"),
          HorizontalImageList(imagePaths: List.filled(20, "assets/images/Frame.png")),
          SizedBox(height: 5),
          SectionHeader(
            title: "Feature",
            buttonImage: "assets/images/Button.png",
          ),
          SizedBox(
            width: 500,
            height: 230,
            child: FeaturePageView(
              pageController: pageController,
              imagePaths: List.filled(5, "assets/images/Frame 24.png"),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SectionHeader(
            title: "Exercise",
            buttonImage: "assets/images/Button.png",
          ),
          ExerciseButtons(
            imagePaths: List.filled(4, "assets/images/Frame 31.png"),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets),
            label: "",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
