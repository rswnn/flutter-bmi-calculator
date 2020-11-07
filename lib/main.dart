import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF1D1E33),
          scaffoldBackgroundColor: Color(0xFF29303B),
          sliderTheme: SliderTheme.of(context).copyWith(
              thumbColor: Color(0xFFEB1555),
              overlayColor: Color(0x29EB1555),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0))),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/results': (context) => ResultScreen()
      },
    );
  }
}
