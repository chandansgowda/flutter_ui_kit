// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:meals_app/UI/screens/category_meals_screen.dart';
import 'UI/screens/categories_screen.dart';
import 'UI/screens/tabs_screen.dart';
import 'UI/screens/meal_detail_screen.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(fontFamily: 'Exo2'),
      //home: TabsScreen(),
      initialRoute: '/',
      routes: {
        
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
    );
  }
}
