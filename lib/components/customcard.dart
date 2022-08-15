import 'package:flutter/material.dart';

class card extends StatelessWidget {
  card({required this.colour, required this.customCard, required this.onPress});
  final Color colour;
  final Widget customCard;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: customCard,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
