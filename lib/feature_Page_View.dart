
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FeaturePageView extends StatelessWidget {
  final PageController pageController;
  final List<String> imagePaths;

  const FeaturePageView(
      {Key? key, required this.pageController, required this.imagePaths})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: pageController,
            itemCount: imagePaths.length,
            itemBuilder: (_, index) => Container(
              height: 200,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(imagePaths[index]),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SmoothPageIndicator(
          controller: pageController,
          count: imagePaths.length,
          effect: WormEffect(activeDotColor: Color(0xFF2631C1)),
          onDotClicked: (index) {},
        ),
      ],
    );
  }
}