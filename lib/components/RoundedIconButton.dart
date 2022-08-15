import 'package:flutter/material.dart';

class RoundedIconbutton extends StatelessWidget {
  RoundedIconbutton({required this.icon, required this.check});
  final IconData icon;
  final check;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: check,
      elevation: 0.0,
      constraints: BoxConstraints(minWidth: 50.0, minHeight: 50.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(
        icon,
        size: 30,
      ),
    );
  }
}
