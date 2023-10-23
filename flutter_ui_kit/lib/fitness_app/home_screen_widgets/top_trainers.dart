import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrainersView extends StatelessWidget {
  const TrainersView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            TopTrainer(name: 'Warren Craig', specialization: 'Yoga Trainer',imageUrl: 'https://images.squarespace-cdn.com/content/v1/59382c00bf629ab995c456da/1506536644157-WWU2SDPFC6IX6B4H233K/_MG_5510.jpg',),
            SizedBox(width: 9,),
            TopTrainer(name: 'Katrina Pilo', specialization: 'Essentially',imageUrl: 'https://assets.sweat.com/shopify_articles/images/010/005/285/original/BackToGymSWEATf1f07a7f6f79e7b8807d2436a6ae8e8b.jpg',),
            SizedBox(width: 9,),
            TopTrainer(name: 'Anthony Mew', specialization: 'Gym Trainer',imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/athlete-in-a-gym-royalty-free-image-1651055064.jpg',),
            SizedBox(width: 9,),
            TopTrainer(name: 'Warren Craig', specialization: 'Yoga Trainer',imageUrl: 'https://www.topfitness.com/cdn/shop/articles/gym-equipment-in-chicago_1_eff36d96-3d69-4606-8cb7-997f4a6eb0ff_1024x1024.jpg',),
            SizedBox(width: 9,),
            TopTrainer(name: 'Warren Craig', specialization: 'Yoga Trainer',imageUrl: 'https://img.freepik.com/free-photo/side-view-man-training-gym_23-2150007161.jpg',),
          ],
        ),
      ),


    );
  }
}

class TopTrainer extends StatelessWidget {
  final String name;
  final String specialization;
  final String imageUrl;

  const TopTrainer({
    Key? key,
    required this.name,
    required this.specialization,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          // ClipRRect to apply the same border radius to the background image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl, // Replace with your image URL
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          // Content on top of the image
          Padding(
            padding: const EdgeInsets.only(top: 110, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  specialization,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



