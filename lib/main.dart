import 'package:bmi_calculator/helpers/bmi_helper.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

BMIHelper bmiHelper = BMIHelper();

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(
              bmiHelper: bmiHelper,
            ),
        '/results': (context) => ResultsPage(
              bmiHelper: bmiHelper,
            ),
      },
    );
  }
}
