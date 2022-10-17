// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:my_ui_kiy/coffee_app/screens/home_screen.dart';
import 'package:my_ui_kiy/crypto_app/screens/home_screen.dart';
import 'package:my_ui_kiy/furniture_app/screens/home_screen.dart';
import 'package:my_ui_kiy/music_app/screens/music_app_home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_ui_kiy/routes.dart';
import 'package:my_ui_kiy/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.appBlue,
      appBar: AppBar(
        title: Text("Neumorphic Flutter UI Kit",
            style: AppThemes.subTitleNunitoBold.copyWith()),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.cyan, Colors.lightBlueAccent])),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: GetRoutes.routes
              .map((screen) => GestureDetector(
                    onTap: () {
                      Get.toNamed(screen.name);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Neumorphic(
                        padding: EdgeInsets.zero,
                        style: NeumorphicStyle(color: AppThemes.appScaffold),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Center(
                              child: Text(
                            screen.arguments.toString(),
                            style: AppThemes.subTitleNunitoBold,
                          )),
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
