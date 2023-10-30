import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/coffee_app/screens/home_screen.dart';
import 'package:flutter_ui_kit/crypto_app/screens/home_screen.dart';
import 'package:flutter_ui_kit/fitness_app/screens/home_screen.dart';
import 'package:flutter_ui_kit/furniture_app/screens/home_screen.dart';
import 'package:flutter_ui_kit/finance_app/screens/home_screen.dart';
import 'package:flutter_ui_kit/music_app/screens/music_app_home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

List<Map<String, String>> AppPaths = [
  {'name': "Coffee App", 'path': CoffeeAppHomeScreen.routeName},
  {'name': "Crypto App", 'path': CryptoAppHomeScreen.routeName},
  {'name': "Furniture App", 'path': FurnitureAppHomeScreen.routeName},
  {'name':"Music App",'path':MusicAppHomeScreen.routeName},
  {'name':"Finance App",'path':FinanceAppHomeScreen.routeName},
  {'name':"Fitness App",'path':FitnessApp.routeName},
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI Kit",
            style: GoogleFonts.raleway(fontWeight: FontWeight.bold)),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.cyan, Colors.lightBlueAccent])),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: AppPaths.map((screen) => GestureDetector(
                  onTap: () {
                    final String path = screen['path'] as String;
                    Navigator.pushNamed(context, path);
                    //Navigator.of(context).pushNamed(path);
                  },
                  child: Card(
                    elevation: 3.0,
                    shadowColor: Colors.black,
                    color: Colors.cyan.shade100,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                          child: Text(
                        screen['name'].toString(),
                        style: GoogleFonts.raleway(fontSize: 20),
                      )),
                    ),
                  ),
                )).toList(),
          ),
        ),
      ),
    );
  }
}
