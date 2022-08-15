import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import '../components/buttom_button.dart';
import '../components/customcard.dart';
import 'package:bmi_calculator/components/recalculate.dart';

class Result_page extends StatelessWidget {
  Result_page(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: card(
                colour: kinactiveColor,
                customCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText,
                      style: kTitleStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kTitleNUmber,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    )
                  ],
                ),
                onPress: () {}),
          ),
          Recalculate(title: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
