import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';

const SizeOfIcon = 80.0;

class CustomIconCard extends StatelessWidget {
  CustomIconCard({required this.customIcon, required this.lable});
  final IconData customIcon;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          customIcon,
          size: SizeOfIcon,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          lable,
          style: klabelstyleText,
        )
      ],
    );
  }
}
