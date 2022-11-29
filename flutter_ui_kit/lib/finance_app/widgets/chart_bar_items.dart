import 'package:flutter/material.dart';

class ChartItems extends StatelessWidget {
  final double hieght;
  final Color color;
  const ChartItems({Key? key, required this.hieght, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hieght,
      width: MediaQuery.of(context).size.width*0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.002),
        color: color,
      ),
    );
  }
}
