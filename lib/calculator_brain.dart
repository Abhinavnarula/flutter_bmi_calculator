import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have gained a lot of weight! We will need to work on that by exercising more.';
    } else if (_bmi > 18.5) {
      return 'You have a good BMI. Keep up!';
    } else {
      return 'Bro, get yourself a burger or sandwich! Your weight is less than normal body weight.';
    }
  }
}
