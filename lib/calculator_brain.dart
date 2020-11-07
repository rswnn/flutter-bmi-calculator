import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({this.height, this.weight});
  double _bmi;
  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25.0) {
      return 'Gendut bener';
    } else if (_bmi > 18.5) {
      return 'Sedeng';
    } else {
      return 'Kekurusan';
    }
  }
}
