import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Kit',
      home: Scaffold(
        body: Center(child: Text("Initial Commit"),),
      ),
    );
  }
}

