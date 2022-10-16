// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:meals_app/UI/screens/category_meals_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealsScreen.routeName, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      child: Neumorphic(
        style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          depth: -19,
          intensity: 7,
          color: color.withOpacity(0.7),
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.jost(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
