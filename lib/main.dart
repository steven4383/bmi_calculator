import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/result_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Inputpage(),
      //   '/second': (context) => Result_page(),
      // },
      home: Inputpage(),
    );
  }
}
