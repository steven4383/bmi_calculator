import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import '../screens/result_page.dart';
import 'package:bmi_calculator/clculator_brain.dart';

class Buttombutton extends StatelessWidget {
  Buttombutton({required this.buttonTitle});
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        CalculationBrain calc =
            CalculationBrain(Height: slidervalue, Weight: weight);

        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Result_page(
                    resultText: calc.getResult(),
                    bmiResult: calc.calculationBmi(),
                    interpretation: calc.getInterpretation(),
                  )),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottonContainerHeight,
        color: kButtonColor,
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
          ),
        ),
      ),
    );
  }
}
