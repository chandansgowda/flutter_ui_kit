// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:meals_app/UI/screens/meal_detail_screen.dart';
import 'package:meals_app/models/meal.dart';
import 'package:google_fonts/google_fonts.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.affordability,
    required this.complexity,
    required this.duration,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
      case Complexity.Challenging:
        return 'Challenging';
      case Complexity.Hard:
        return 'Hard';
      default:
        return 'Unknown';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
      case Affordability.Pricey:
        return 'Pricey';
      case Affordability.Luxurious:
        return 'Luxurious';
      default:
        return 'Unknown';
    }
  }

  void selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(MealDetailScreen.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Neumorphic(
          style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              depth: -12,
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(15))),
          margin: EdgeInsets.zero,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image.network(
                        imageUrl,
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 10,
                      child: Container(
                        width: 300,
                        color: Colors.black54,
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        child: Text(
                          title,
                          style: GoogleFonts.allura(
                            color: Colors.white,
                            fontSize: 23,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.schedule,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              '$duration min',
                              style: GoogleFonts.courgette(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.food_bank),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              complexityText,
                              style: GoogleFonts.courgette(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.attach_money),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              affordabilityText,
                              style: GoogleFonts.courgette(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
