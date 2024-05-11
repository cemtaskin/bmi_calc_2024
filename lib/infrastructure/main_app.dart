import 'dart:math';

class MainApp {
  static double bmiValue = 0.0;
  static String bmiResult = '';
  static String bmiDesc = '';

  void calculateBmi(double weight, double height) {
    bmiValue = (weight / pow(height / 100, 2));
    bmiDesc = getBmiDesc(bmiValue);
    bmiResult = getBmiResult(bmiValue);
  }

  String getBmiResult(double bmiValue) {
    if (bmiValue > 40) {
      return 'Obese';
    } else if (bmiValue > 25) {
      return 'Overwight';
    } else if (bmiValue > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getBmiDesc(double bmiValue) {
    if (bmiValue > 40) {
      return 'You are in a dangeours situation. Please try more not to eat.';
    } else if (bmiValue > 25) {
      return 'You have a higher than normal body weight.Try to excercise more';
    } else if (bmiValue > 18.5) {
      return 'You have a normal body weight. Good job';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }
}
