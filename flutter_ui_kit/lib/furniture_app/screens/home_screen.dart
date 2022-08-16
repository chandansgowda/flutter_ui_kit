import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/furniture_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class FurnitureAppHomeScreen extends StatelessWidget {
  static const routeName = "furniture-app";

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(brightness: Brightness.light, primarySwatch: Colors.blue),
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Dashboard", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 25),),
                    Icon(Icons.notifications_none_outlined, color: Colors.white,),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                  prefixIcon: Icon(Icons.search_rounded),
                    prefixIconColor: Colors.white,
                    labelText: "Search",

                ),
              ),
              Container(
                height: 35,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(5),
                  children: [
                    Text("All"),
                    Text("Sofa"),
                    Text("Park bench"),
                    Text("Armchair"),
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

