import 'package:flutter/material.dart';

import 'chart_bar_items.dart';
class ChartBar extends StatelessWidget {
  const ChartBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ChartItems(hieght: MediaQuery.of(context).size.height*0.12, color: Colors.grey.shade400),
            ChartItems(hieght: MediaQuery.of(context).size.height*0.19, color: Colors.blue.shade800),
            ChartItems(hieght: MediaQuery.of(context).size.height*0.15, color: Colors.grey.shade400),
            ChartItems(hieght: MediaQuery.of(context).size.height*0.10, color: Colors.grey.shade400),
            ChartItems(hieght: MediaQuery.of(context).size.height*0.13, color: Colors.grey.shade400),
            ChartItems(hieght: MediaQuery.of(context).size.height*0.19, color: Colors.grey.shade400),
            ChartItems(hieght: MediaQuery.of(context).size.height*0.13, color: Colors.grey.shade400),
          ],
        ),
      ),
    );
  }

}