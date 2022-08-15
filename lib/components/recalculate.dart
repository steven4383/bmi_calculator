import 'package:flutter/material.dart';
import '../constant.dart';
import '../screens/result_page.dart';

class Recalculate extends StatelessWidget {
  Recalculate({required this.title}) {}
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottonContainerHeight,
        color: kButtonColor,
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
          ),
        ),
      ),
    );
  }
}
