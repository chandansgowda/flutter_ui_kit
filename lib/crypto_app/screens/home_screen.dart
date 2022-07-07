import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/crypto_app/styles.dart';
import 'package:google_fonts/google_fonts.dart';

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
          leading: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: Icon(Icons.menu), decoration: kIconButtonDecoration),
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
                  decoration: kIconButtonDecoration),
            ),
            Container(
              margin: EdgeInsets.only(right: 15),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/41890434?v=4&raw=true"),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Balance",
                style: GoogleFonts.openSans(color: Colors.grey),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "\$320,230.00",
                    style: GoogleFonts.openSans(fontSize: 40),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 0.80),
                      ),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                        items: [
                          DropdownMenuItem(child: Text("USD")),
                        ],
                        onChanged: null,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      )))
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Text("My Portfolio", style: GoogleFonts.openSans(fontSize: 19),),
                TextButton(onPressed: (){}, child: Text("Edit >", style: GoogleFonts.openSans(color: Colors.lightGreenAccent),))
              ],),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 220,
                width: 160,
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(26, 30, 46, 1),
                  border: Border.all(color: Colors.grey, width: 0.8),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(color: Colors.white70, spreadRadius: 0.2, blurRadius: 2)]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(backgroundImage: AssetImage("/images/crypto_app/btc.png"),radius: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("BITCOIN"),
                            Text("BTC", style: TextStyle(color: Colors.grey, fontSize: 13),)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 25,),
                    Text("2.0234565", style: GoogleFonts.openSans(fontSize: 22),),
                    Row(children: [
                      Icon(Icons.arrow_upward, size: 13,color: Colors.lightGreen,),
                      Text("  +12.78(0.11%)", style: GoogleFonts.openSans(fontSize: 10, color: Colors.lightGreen),)
                    ],)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
