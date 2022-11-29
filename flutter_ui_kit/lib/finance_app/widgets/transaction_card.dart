import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final IconData icon;
  final Text title;
  final Text titleT;
  final Text titleY;
  final Text titleU;
  const TransactionCard({Key? key, required this.icon, required this.title, required this.titleT, required this.titleY, required this.titleU}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.018),
                  color: Colors.grey[200],
                ),
                child: Center(
                  child: Padding(
                    padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.02),
                    child: Icon(icon),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      title,
                      titleT,
                    ],
                  ),
                  titleY,
                ],
              ),
            ],
          ),
          Row(
            children: [
              titleU,
            ],
          ),
        ],
      ),
    );
  }
}