import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/fitness_app/consts/Pallete.dart';
import 'package:google_fonts/google_fonts.dart';

class AllTrainers extends StatelessWidget {
  const AllTrainers({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Column(
          children: [
            AllTrainersList(cost: 8.88,name: 'Hana Orego',specialization: 'Yoga Trainer',
                imageUrl: 'https://i.pinimg.com/736x/63/8d/ec/638decb941a87a8228171c65daa30d70.jpg',),
            AllTrainersList(cost: 25.0,name: 'Batrik Rosea',specialization: 'Yoga Trainer',
              imageUrl: 'https://i.pinimg.com/736x/63/8d/ec/638decb941a87a8228171c65daa30d70.jpg',),
            AllTrainersList(cost: 8.88,name: 'Hana Orego',specialization: 'Yoga Trainer',
              imageUrl: 'https://i.pinimg.com/736x/63/8d/ec/638decb941a87a8228171c65daa30d70.jpg',),
            AllTrainersList(cost: 8.88,name: 'Hana Orego',specialization: 'Yoga Trainer',
              imageUrl: 'https://i.pinimg.com/736x/63/8d/ec/638decb941a87a8228171c65daa30d70.jpg',),
            AllTrainersList(cost: 8.88,name: 'Hana Orego',specialization: 'Yoga Trainer',
              imageUrl: 'https://i.pinimg.com/736x/63/8d/ec/638decb941a87a8228171c65daa30d70.jpg',),
          ],
        ),
      ),


    );
  }
}







class AllTrainersList extends StatelessWidget {
  final String name;
  final String specialization;
  final double cost;
  final String imageUrl;

  AllTrainersList({
    Key? key,
    required this.name,
    required this.specialization,
    required this.cost,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24,),
      child: Container(
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(
            color: Color(0xFFF1F1F1),
            blurRadius: 4,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),BoxShadow(
            color: Color(0x11F1F1F1),
            blurRadius: 28,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),BoxShadow(
            color: Color(0xFFF1F1F1),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),BoxShadow(
            color: Color(0xFFF1F1F1),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
                radius: 24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Palette.colo,
                    ),
                  ),
                  Text(
                    specialization,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Palette.navicons,
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      Icon(Icons.star_border_outlined, color: Colors.amber, size: 18),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '\$$cost',
                    style: GoogleFonts.poppins(
                      color: Palette.accentColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                    ),
                  ),
                  Text(
                    "Per Minutes",
                    style: GoogleFonts.poppins(
                      color: Palette.navicons,
                      fontWeight: FontWeight.normal,
                      fontSize: 12
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




