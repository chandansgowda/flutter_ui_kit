import 'package:flutter/material.dart';

class TrainersView extends StatelessWidget {
  const TrainersView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: 150,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(12)
              ),
            ),
            SizedBox(width: 9,),
            Container(
              height: 150,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(12)
              ),
            ),
            SizedBox(width: 9,),
            Container(
              height: 150,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(12)
              ),
            ),
            SizedBox(width: 9,),
            Container(
              height: 150,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(12)
              ),
            ),
            SizedBox(width: 9,),
            Container(
              height: 150,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(12)
              ),
            ),
          ],
        ),
      ),


    );
  }
}
