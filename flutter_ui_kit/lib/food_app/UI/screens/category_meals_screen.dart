// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:meals_app/UI/widgets/meal_item.dart';
import 'package:meals_app/models/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 80, 250, 190),
        title: NeumorphicText(
          categoryTitle.toString(),
          style: NeumorphicStyle(
            lightSource: LightSource.topLeft,
            border: NeumorphicBorder(
              color: Color.fromARGB(68, 51, 0, 255),
              width: 3,
            ),
            depth: 12, //customize depth here
            color: Color.fromARGB(255, 51, 0, 85), //customize color here
          ),
          textStyle: NeumorphicTextStyle(
            fontFamily: 'Aboreto',
            fontSize: 40, //customize size here
            // AND others usual text style properties (fontFamily, fontWeight, ...)
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              id: categoryMeals[index].id,
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              affordability: categoryMeals[index].affordability,
              complexity: categoryMeals[index].complexity,
              duration: categoryMeals[index].duration);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
