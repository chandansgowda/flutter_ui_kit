// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_ui_kiy/coffee_app/widgets/coffee_tile.dart';
import 'package:my_ui_kiy/coffee_app/widgets/coffee_type_list_item.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_ui_kiy/coffee_app/widgets/favourites.dart';
import 'package:my_ui_kiy/theme.dart';

class CoffeeAppHomeScreen extends StatelessWidget {
  static const routeName = '/coffee-app-home-screen';
  const CoffeeAppHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.appScaffold,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Find your coffee',
          style: AppThemes.subTitle2MaliBold,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppThemes.appGold,
          backgroundColor: AppThemes.appBlue,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "Favourites", icon: Icon(Icons.favorite)),
            BottomNavigationBarItem(
                label: "Notifications", icon: Icon(Icons.notifications)),
          ]),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Card(
              elevation: 9,
              child: Image.network(
                'https://seeafricatoday.com/wp-content/uploads/2020/04/Ethiopian-coffee-2-2048x1365.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(height: 15),
          FavouritesWidget(),
          SizedBox(height: 15),
          Text(
            'Feel the elixir of life with your pick of coffee',
            style: AppThemes.subTitleNunitoBold.copyWith(fontSize: 14),
          ),
          SizedBox(height: 10),
          Divider(
            thickness: 1,
          ),
          SizedBox(height: 10),
          GridView.count(
              padding: EdgeInsets.symmetric(horizontal: 20),
              childAspectRatio: (2 / 3),
              crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                CoffeeTile(
                    title: 'breve',
                    subtitle: 'fresh milk',
                    price: '120',
                    imagePath:
                        'https://th.bing.com/th/id/OIP.5HdeK06GA0ErNbM872xd2AHaFY?pid=ImgDet&rs=1'),
                CoffeeTile(
                    title: 'Latte',
                    subtitle: 'Almond Milk',
                    price: '250',
                    imagePath:
                        'https://th.bing.com/th/id/R.0ecc3f0e6da88064dfa4ad0dfdb12409?rik=dmYKTYF1lqq0Eg&riu=http%3a%2f%2fimages6.fanpop.com%2fimage%2fphotos%2f39000000%2f-Coffee-coffee-39019633-2048-2048.jpg&ehk=npPBEZN6HofMZSNlm2d%2fRL8TI1OhGVu%2fOMgO%2fB84wtg%3d&risl=&pid=ImgRaw&r=0'),
                CoffeeTile(
                    title: 'breve',
                    subtitle: 'fresh milk',
                    price: '120',
                    imagePath:
                        'https://th.bing.com/th/id/OIP.iOXZtzh5WOOqyrGJDHLm_wHaHa?pid=ImgDet&rs=1'),
                CoffeeTile(
                    title: 'Latte',
                    subtitle: 'Almond Milk',
                    price: '250',
                    imagePath:
                        'https://th.bing.com/th/id/OIP.5HdeK06GA0ErNbM872xd2AHaFY?pid=ImgDet&rs=1'),
              ]),
        ]),
      ),
    );
  }
}

// Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25),
//                   child: Text("Find the best coffee for you",
//                       style: GoogleFonts.cormorant(
//                           fontSize: 52, fontWeight: FontWeight.w500))),
//               SizedBox(
//                 height: 25,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: TextField(
//                   decoration: InputDecoration(
//                       prefixIcon: Icon(Icons.search),
//                       hintText: "Find your coffee..",
//                       hintStyle: GoogleFonts.openSans(),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.grey.shade600)),
//                       enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.grey.shade600))),
//                 ),
//               ),
//               SizedBox(
//                 height: 25,
//               ),
//               SizedBox(
//                 height: 50,
//                 child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 25),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         CoffeeTypeListItem("Capuccino", true),
//                         CoffeeTypeListItem("Latte", false),
//                         CoffeeTypeListItem("Black", false),
//                         CoffeeTypeListItem("Tea", false),
//                       ],
//                     )),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               GridView.count(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 10.0,
//                 mainAxisSpacing: 10.0,
//                 shrinkWrap: true,
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   CoffeeTile(
//                       title: "Capuccino",
//                       subtitle: "With Almond Milk",
//                       price: "5.20",
//                       imagePath:
//                           "https://th.bing.com/th/id/R.0ecc3f0e6da88064dfa4ad0dfdb12409?rik=dmYKTYF1lqq0Eg&riu=http%3a%2f%2fimages6.fanpop.com%2fimage%2fphotos%2f39000000%2f-Coffee-coffee-39019633-2048-2048.jpg&ehk=npPBEZN6HofMZSNlm2d%2fRL8TI1OhGVu%2fOMgO%2fB84wtg%3d&risl=&pid=ImgRaw&r=0"),
//                   CoffeeTile(
//                       title: "Latte New",
//                       subtitle: "With Almond Milk",
//                       price: "4.60",
//                       imagePath:
//                           "https://th.bing.com/th/id/OIP.iOXZtzh5WOOqyrGJDHLm_wHaHa?pid=ImgDet&rs=1"),
//                   CoffeeTile(
//                       title: "Capuccino 2",
//                       subtitle: "With Almond Milk",
//                       price: "8.10",
//                       imagePath:
//                           "https://th.bing.com/th/id/OIP.CsUeJHwJp-s0syN_rjuT1wHaHa?pid=ImgDet&rs=1"),
//                 ],
//               )
//             ],
