import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/crypto_app/styles.dart';

class CryptoAppHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(brightness: Brightness.dark),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(26, 30, 46, 1),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Icon(Icons.menu),
              decoration: kIconButtonDecoration
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.all(2),
                  child: Icon(Icons.notifications_none_outlined),
                  decoration: kIconButtonDecoration
              ),
            ),
            CircleAvatar(backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/41890434?v=4&raw=true"),)
          ],
        ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Total Balance", style: TextStyle(color: Colors.grey),),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$320,230.00", style: TextStyle(fontSize: 30),),
                DropdownButton(items: [DropdownMenuItem(child: Text("USD"))], onChanged: (val){}, borderRadius: BorderRadius.all(Radius.circular(25)),)
              ],
            )
          ],
        ),
      ),
      ),
    );
  }
}
