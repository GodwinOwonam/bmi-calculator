import 'dart:math';

import 'package:flutter/foundation.dart';

class BMIHelper {
  late double? height = 0;
  late double? weight = 0;

  BMIHelper({
    this.height,
    this.weight,
  });

  double _bmi = 0.0;

  double _calculate() {
    if (weight == 0 || height == 0) {
      return 0;
    }

    _bmi = (weight! / pow(height! / 100, 2))!;

    return _bmi;
  }

  String calculateToString({int? decimal = 1}) {
    return _calculate().toStringAsFixed(decimal!);
  }

  String interpret() {
    if (_bmi == 0.0) {
      _calculate();
    }

    if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String describe() {
    if (_bmi == 0.0) {
      _calculate();
    }

    if (_bmi >= 25.0) {
      return 'You have a higher than normal body weight. Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  void reset() {
    height = 0;
    weight = 0;
    _bmi = 0;
  }
}
