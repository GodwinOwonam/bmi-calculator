import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants/constant.dart';
import 'package:bmi_calculator/components/tile.dart';
import 'package:flutter/material.dart';

import '../helpers/bmi_helper.dart';

class ResultsPage extends StatelessWidget {
  final BMIHelper bmiHelper;

  const ResultsPage({required this.bmiHelper, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'BMI CALCULATOR',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Tile(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiHelper.interpret().toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiHelper.calculateToString(),
                    style: kBMITextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      bmiHelper.describe(),
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            title: 'RE-CALCULATE',
            onTap: () {
              bmiHelper.reset();

              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
