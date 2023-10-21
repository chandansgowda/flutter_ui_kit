
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/fitness_app/Pallete.dart';
import 'package:google_fonts/google_fonts.dart';

class FitnessApp extends StatelessWidget {
  static const routeName='/fitness-app-home-screen';
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://w0.peakpx.com/wallpaper/170/826/HD-wallpaper-spider-black-blue-game-hero-logo-movie-spiderman-super-super-hero.jpg'),
            radius: 24,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello Martin",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Palette.textblack,
              ),
            ),
            Text(
              "Good Morning",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Palette.textblack,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: CircleAvatar(
              backgroundColor: Colors.white,

              child: Icon(
                Icons.notifications,
                size: 24,
                color: Color(0xFF232323),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TrainerList(),
            TrainerList(),
            TrainerList(),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavbar(),

    );
  }
}

//Trainer List
class TrainerList extends StatelessWidget {
  const TrainerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        width: 340,
        height: 110,
        decoration: BoxDecoration(
            color: Palette.trainerlistColor,
            borderRadius: BorderRadius.circular(24)

        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/fitness_app/your_image.png'),
                radius: 24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:28,left: 10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Elena Ratio",style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Palette.backgroundColor

                  ),),
                  Text("Yoga Trainer",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Palette.backgroundColor
                    ),),
                ],
              ),
            ),
            SizedBox(width: 30,),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Palette.accentColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "05",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Palette.backgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Minutes",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Palette.accentColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "10",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Palette.backgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Seconds",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )

          ],
        ),

      ),
    );
  }
}

