import 'package:flutter/material.dart';

class FurnitureAppHomeScreen extends StatelessWidget {
  static const routeName = "furniture-app";

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(brightness: Brightness.light, primarySwatch: Colors.blue),
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Text("Dashboard"),
                Icon(Icons.notifications_none_outlined),
              ],
            )
          ],
        ),
      ),
    );
  }
}

