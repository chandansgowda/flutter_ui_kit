// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:my_ui_kiy/theme.dart';

class CoffeeTile extends StatelessWidget {
  final String title, subtitle, price, imagePath;

  CoffeeTile(
      {required this.title,
      required this.subtitle,
      required this.price,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: 6,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    imagePath,
                    fit: BoxFit.cover,
                    height: 100,
                    width: 140,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppThemes.bodyText2MaliBoldSmall,
                  ),
                  Text(
                    subtitle,
                    style: AppThemes.bodyText2MaliRegularSmall
                        .copyWith(fontSize: 15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" ₹ $price", style: AppThemes.bodyText2MaliRegularSmall),
                  Neumorphic(
                      style: NeumorphicStyle(
                          depth: 9, boxShape: NeumorphicBoxShape.circle()),
                      child: IconButton(
                          iconSize: 14,
                          onPressed: () {},
                          icon: Icon(Icons.add)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
