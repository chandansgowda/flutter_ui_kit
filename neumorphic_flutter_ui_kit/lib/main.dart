import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ui_kiy/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      title: 'Flutter Neumorphic UI Kit',
      debugShowCheckedModeBanner: false,
      getPages: GetRoutes.routes,
      initialRoute: '/',
      popGesture: Get.isPopGestureEnable,
    );
  }
}
