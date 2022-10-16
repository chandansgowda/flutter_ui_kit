// Readability
// Efficiency
// Optimizing

// ignore_for_file: prefer_const_constructors

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:meals_app/UI/widgets/category_item.dart';
import 'package:meals_app/models/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 17, 78),
        title: NeumorphicText(
          'MEALS APP',
          style: NeumorphicStyle(
            lightSource: LightSource.topLeft,
            border: NeumorphicBorder(
              color: Color(0x33000000),
              width: 3,
            ),
            depth: 4, //customize depth here
            color: Color.fromARGB(255, 196, 255, 201), //customize color here
          ),
          textStyle: NeumorphicTextStyle(
            fontFamily: 'Aboreto',
            fontSize: 45, //customize size here
            // AND others usual text style properties (fontFamily, fontWeight, ...)
          ),
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: DUMMY_CATEGORIES
            .map(
              (catData) =>
                  CategoryItem(catData.id, catData.title, catData.color),
            )
            .toList(),
      ),
    );
  }
}
