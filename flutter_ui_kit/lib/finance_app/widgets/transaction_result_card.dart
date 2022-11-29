import 'package:flutter/material.dart';

class TransactionResultCard extends StatelessWidget {
  final Text title;
  final Text titleY;
  final IconData icon;
  const TransactionResultCard({Key? key, required this.title, required this.titleY, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width*0.025),
        color: Colors.grey[100],
      ),
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.025),
                      color: Colors.white
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.009),
                    child: Transform.rotate(
                      angle: MediaQuery.of(context).size.height*0.027,
                      child: Icon(icon),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.025,
                ),
                title,
              ],
            ),
            titleY,
          ],
        ),
      ),
    );
  }
}