import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_page_view_indicator/flutter_page_view_indicator.dart';
import 'package:flutter_page_view_indicator_example/onboarding/onboarding_model.dart';
import 'package:flutter_page_view_indicator_example/onboarding/single_onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<OnBoardingModel> screens = [
    OnBoardingModel(
      image: 'assets/images/onboarding-1.jpg',
      title: 'Welcome',
      description:
          "thank you for choosing our plugin, we are very happy and we assure you that you will be too",
    ),
    OnBoardingModel(
      image: 'assets/images/onboarding-2.jpg',
      title: 'Add To Cart',
      description:
          "Now Were up in the big leagues gettingour turn at bat. The Brady bunch that's the why we brad bunch",
    ),
    OnBoardingModel(
      image: 'assets/images/onboarding-3.jpg',
      title: 'Enjoy Purchase!',
      description:
          "Now Were up in the big leagues gettingour turn at bat. The Brady bunch that's the why we brad bunch",
    ),
  ];
  PageController? _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: screens.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: SingleOnBoardingScreen(screens[index]),
                );
              },
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            Transform.translate(
              offset: Offset(0, 600),
              child: PageViewIndicator(
                length: screens.length,
                currentIndex: currentIndex,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
