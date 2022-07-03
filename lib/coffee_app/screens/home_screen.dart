import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/coffee_app/widgets/coffee_tile.dart';
import 'package:flutter_ui_kit/coffee_app/widgets/coffee_type_list_item.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeAppHomeScreen extends StatelessWidget {
  const CoffeeAppHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.orange),
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.person),
            )
          ],
        ),
        bottomNavigationBar:
            BottomNavigationBar(selectedItemColor: Colors.orange,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "Favourites", icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(
              label: "Notifications", icon: Icon(Icons.notifications)),
        ]),
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text("Find the best coffee for you",
                    style: GoogleFonts.cormorant(fontSize: 52, fontWeight: FontWeight.w500))),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Find your coffee..",
                    hintStyle: GoogleFonts.openSans(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600))),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CoffeeTypeListItem("Capuccino", true),
                    CoffeeTypeListItem("Latte", false),
                    CoffeeTypeListItem("Black", false),
                    CoffeeTypeListItem("Tea", false),
                  ],
                )
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTile(
                    title: "Capuccino",
                    subtitle: "With Almond Milk",
                    price: "5.20",
                    imagePath: "/images/coffee_app/capuccino.jpg"),
                CoffeeTile(
                    title: "Latte New",
                    subtitle: "With Almond Milk",
                    price: "4.60",
                    imagePath: "/images/coffee_app/latte.jpg"),
                CoffeeTile(
                    title: "Capuccino 2",
                    subtitle: "With Almond Milk",
                    price: "8.10",
                    imagePath: "/images/coffee_app/milk.jpg"),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
