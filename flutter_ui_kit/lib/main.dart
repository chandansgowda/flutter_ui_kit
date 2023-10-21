import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/coffee_app/screens/home_screen.dart';
import 'package:flutter_ui_kit/crypto_app/screens/home_screen.dart';
import 'package:flutter_ui_kit/fitness_app/screens/home_screen.dart';
import 'package:flutter_ui_kit/furniture_app/screens/home_screen.dart';
import 'package:flutter_ui_kit/finance_app/screens/home_screen.dart';
import 'package:flutter_ui_kit/home.dart';
import 'package:flutter_ui_kit/music_app/screens/music_app_home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Kit',
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(ctx)=>HomeScreen(),
        CoffeeAppHomeScreen.routeName:(ctx)=>CoffeeAppHomeScreen(),
        CryptoAppHomeScreen.routeName:(ctx)=>CryptoAppHomeScreen(),
        FurnitureAppHomeScreen.routeName:(ctx)=>FurnitureAppHomeScreen(),
        MusicAppHomeScreen.routeName:(ctx)=>MusicAppHomeScreen(),
        FinanceAppHomeScreen.routeName:(ctx)=>FinanceAppHomeScreen(),
        FitnessApp.routeName:(ctx)=>FitnessApp(),
      },
      initialRoute: '/',
    );
  }
}

