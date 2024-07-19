import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
              label: Text('3',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
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
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 18),
            child: Row(
              children: [
                Text(
                  "Hello, ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "Sara Rose",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 18),
            child: Row(
              children: [
                Text(
                  "How are you feeling today ? ",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 400,
                height: 100,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    width: 1,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Image.asset(
                          "assets/images/Frame.png",
                        ));
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 20, bottom: 5),
                child: Text(
                  "Feature",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 150,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 20, bottom: 5),
                  child: Image.asset(
                    "assets/images/Button.png",
                    width: 90,
                    height: 70,
                  )),
              // SizedBox(
              //   height: 10,
              // ),
            ],
          ),
          SizedBox(
            width: 500,
            height: 200,
            child: ListView(
              children: [
                SizedBox(
                  height: 1,
                ),
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: 15,
                    itemBuilder: (_, index) => Container(
                      height: 200,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/Frame 24.png",
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    SmoothPageIndicator(
                      controller: pageController,
                      // PageController
                      count: 5,
                      effect: WormEffect(activeDotColor: Color(0xFF2631C1)),
                      // your preferred effect
                      onDotClicked: (index) {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 5),
                child: Text(
                  "Exercise",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 150,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 5),
                  child: Image.asset(
                    "assets/images/Button.png",
                    width: 90,
                    height: 45,
                  )),
              // SizedBox(
              //   height: 10,
              // ),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    width: 120,
                    height: 70,
                    child: Image.asset(
                      "assets/images/Frame 31.png",
                    ),
                  )),
              SizedBox(
                width: 50,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    width: 120,
                    height: 70,
                    child: Image.asset(
                      "assets/images/Frame 31.png",
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    width: 120,
                    height: 70,
                    child: Image.asset(
                      "assets/images/Frame 31.png",
                    ),
                  )),
              SizedBox(
                width: 50,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    width: 120,
                    height: 70,
                    child: Image.asset(
                      "assets/images/Frame 31.png",
                    ),
                  )),
            ],
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
