import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/customiconcard.dart';
import 'package:bmi_calculator/components/customcard.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/components/RoundedIconButton.dart';
import 'package:bmi_calculator/components/buttom_button.dart';

int weight = 60;
int age = 19;
int slidervalue = 180;

enum Gender { male, female }

// enum cal { increase, decrease }

class Inputpage extends StatefulWidget {
  const Inputpage({Key? key}) : super(key: key);
  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  Color malecardColor = kinactiveColor;
  Color femalecardColor = kinactiveColor;
  Gender? selectedgender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: card(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    customCard: CustomIconCard(
                      customIcon: Icons.male,
                      lable: 'Male',
                    ),
                    colour: selectedgender == Gender.male
                        ? kactiveColor
                        : kinactiveColor,
                  ),
                ),
                Expanded(
                  child: card(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    customCard: CustomIconCard(
                      customIcon: Icons.female,
                      lable: 'Female',
                    ),
                    colour: selectedgender == Gender.female
                        ? kactiveColor
                        : kinactiveColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: card(
              onPress: () {},
              customCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: klabelstyleText,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        slidervalue.toString(),
                        style: kboldfont,
                      ),
                      Text(
                        'cm',
                        style: klabelstyleText,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                        thumbColor: Color(0xFFEB1555),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 25.0)),
                    child: Slider(
                      value: slidervalue.toDouble(),
                      min: 120.0,
                      max: 200.0,
                      onChanged: (double newvalue) {
                        setState(() {
                          slidervalue = newvalue.floor();
                        });
                      },
                    ),
                  ),
                ],
              ),
              colour: kactiveColor,
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: card(
                    onPress: () {},
                    customCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: klabelstyleText,
                        ),
                        Text(
                          weight.toString(),
                          style: kboldfont,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconbutton(
                              icon: Icons.remove,
                              check: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundedIconbutton(
                              icon: Icons.add,
                              check: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    colour: kactiveColor,
                  ),
                ),
                Expanded(
                  child: card(
                    onPress: () {},
                    customCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: klabelstyleText,
                        ),
                        Text(
                          age.toString(),
                          style: kboldfont,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconbutton(
                              icon: Icons.remove,
                              check: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundedIconbutton(
                              icon: Icons.add,
                              check: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    colour: kactiveColor,
                  ),
                ),
              ],
            ),
          ),
          Buttombutton(
            buttonTitle: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
