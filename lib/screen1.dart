import 'package:c11_exam_friday/carousel_Image_Item.dart';
import 'package:c11_exam_friday/row_categories.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class AudiBooksScreen extends StatelessWidget {
  static const String routeName = 'AudiBooksScreen';

  const AudiBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Image.asset(
            "assets/images/Logo.png",
            height: 40,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Icon(
              Icons.settings,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.lightBlue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: "Library",
            backgroundColor: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          RowReusableComponent(
            title: "Categories",
            actionText: "See more",
            titleSize: 15,
            actionTextSize: 14,
          ),
          SizedBox(
            width: 400,
            height: 50,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Art"),
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: 8,
            ),
          ),
          SizedBox(height: 50),
          RowReusableComponent(
            title: "Recommended For You",
            actionText: "See more",
            titleSize: 18,
            actionTextSize: 17,
          ),
          SizedBox(height: 50),
          CarouselSlider(
            items: [
              CarouselImageItem(imagePath: 'assets/images/Image Placeholder.png'),
              CarouselImageItem(imagePath: 'assets/images/Image Placeholder.png'),
              CarouselImageItem(imagePath: 'assets/images/Image Placeholder.png'),
              CarouselImageItem(imagePath: 'assets/images/Image Placeholder.png'),
            ],
            options: CarouselOptions(
              height: 400,
              aspectRatio: 16 / 8,
              viewportFraction: 0.6,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              enlargeCenterPage: true,
              enlargeFactor: 0.5,
              reverse: true,
            ),
          ),
        ],
      ),
    );
  }
}
