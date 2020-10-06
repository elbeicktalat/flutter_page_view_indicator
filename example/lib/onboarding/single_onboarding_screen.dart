import 'package:flutter/material.dart';
import 'package:flutter_page_view_indicator_example/onboarding/onboarding_model.dart';

class SingleOnBoardingScreen extends StatelessWidget {
  final OnBoardingModel onBoardingModel;

  SingleOnBoardingScreen(this.onBoardingModel);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.90,
          height: MediaQuery.of(context).size.height * 0.45,
          child: Image(
            image: ExactAssetImage(
              onBoardingModel.image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        Divider(color: Colors.transparent),
        Text(
          onBoardingModel.title,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(color: Colors.transparent),
        Text(
          onBoardingModel.description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            height: 1.4,
          ),
        ),
      ],
    );
  }
}
