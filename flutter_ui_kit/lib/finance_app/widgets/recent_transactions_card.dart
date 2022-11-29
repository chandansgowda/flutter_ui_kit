import 'package:flutter/material.dart';
class TransactionCard extends StatelessWidget {
  final IconData icon;
  final Text company;
  final Text companyDomain;
  final Text date;
  final Text dollars;
  TransactionCard({Key? key,required this.icon, required this.company, required this.companyDomain, required this.date, required this.dollars}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.015),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                child: Center(
                  child: Padding(
                    padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.02),
                    child: Icon(icon),
                    ),
                  ),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.018),
                  color: Colors.grey[200],
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
                      company,
                      companyDomain,
                    ],
                  ),
                  date,
                ],
              ),
            ],
          ),
          Row(
            children: [
              dollars,
            ],
          ),
        ],
      ),
    );
  }
}
