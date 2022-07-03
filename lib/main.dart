import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/coffee_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Kit',
      debugShowCheckedModeBanner: false,
      home: CoffeeAppHomeScreen()
    );
  }
}

