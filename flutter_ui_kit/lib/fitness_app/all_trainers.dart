import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/fitness_app/Pallete.dart';
import 'package:google_fonts/google_fonts.dart';

class AllTrainers extends StatelessWidget {
  const AllTrainers({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            AllTrainersList(),
            SizedBox(height: 9,),
            Container(
              height: 90,
              width: 340,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(12)
              ),
            ),
            SizedBox(height: 9,),
            Container(
              height: 90,
              width: 340,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(12)
              ),
            ),
            SizedBox(height: 9,),
            Container(
              height: 90,
              width: 340,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(12)
              ),
            ),
            SizedBox(height: 9,),
            Container(
              height: 90,
              width: 340,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(12)
              ),
            ),
          ],
        ),
      ),


    );
  }
}

class AllTrainersList extends StatelessWidget {
  const AllTrainersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24,bottom: 24),
      child: Container(
        width: 340,
        height: 90,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)

        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/736x/63/8d/ec/638decb941a87a8228171c65daa30d70.jpg'),
                radius: 24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8,left: 10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hana Orego",style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Palette.colo

                  ),),
                  Text("Yoga Trainer",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Palette.navicons
                    ),),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.amber,size: 18,),
                      Icon(Icons.star,color: Colors.amber,size: 18,),
                      Icon(Icons.star,color: Colors.amber,size: 18,),
                      Icon(Icons.star,color: Colors.amber,size: 18,),
                      Icon(Icons.star_border_outlined,color: Colors.amber,size: 18,),
                    ],
                  ),
                  // Column(
                  //   children: [
                  //     Text("8.88"),
                  //     Text("Per Minutes")
                  //   ],
                  // )
                ],
              ),
            ),


          ],
        ),

      ),
    );
  }
}

