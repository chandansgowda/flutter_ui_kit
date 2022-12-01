import 'package:flutter/material.dart';

import '../screens/new_transaction_screen.dart';
class HomeScreenOptionButton extends StatelessWidget {
  final IconData icon;
  final Text title;
  const HomeScreenOptionButton({Key? key,required this.icon,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (_)=> NewTransactionScreen()));
      },
      child: Padding(
        padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.01,
          left: MediaQuery.of(context).size.height*0.019,
          right: MediaQuery.of(context).size.height*0.019,),
        child: Column(
          children: [
            CircleAvatar(
              radius: MediaQuery.of(context).size.height*0.04,
              backgroundColor: Colors.white,
              child: Icon(icon),
            ),
            title,
          ],
        ),
      ),
    );
  }
}
