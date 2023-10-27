
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/fitness_app/home_screen_widgets/categories_part.dart';
import 'package:flutter_ui_kit/fitness_app/consts/pallete.dart';
import 'package:flutter_ui_kit/fitness_app/home_screen_widgets/all_trainers.dart';
import 'package:flutter_ui_kit/fitness_app/home_screen_widgets/nav_bar.dart';
import 'package:flutter_ui_kit/fitness_app/home_screen_widgets/top_trainers.dart';
import 'package:flutter_ui_kit/fitness_app/screens/toptrainer_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';



class FitnessApp extends StatelessWidget {
  static const routeName = '/fitness-app-home-screen';

  const FitnessApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.only(left:24),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://w0.peakpx.com/wallpaper/170/826/HD-wallpaper-spider-black-blue-game-hero-logo-movie-spiderman-super-super-hero.jpg'),
            radius: 68,
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
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xFFEEEEEE),
                  width: 1/2,
                ),
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  MdiIcons.bell,
                  size: 24,
                  color: Palette.accentColor,
                ),
              ),

            ),

          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              children: [
                //Elano Ratio
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TrainerList(),
                      SizedBox(width: 7),
                      TrainerList(),
                      SizedBox(width: 7),
                      TrainerList(),
                    ],
                  ),
                ),
                //All Categories
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // POSTS
                      ProfileScreenTabs(text: "All Categories", isSelected: true),
                      // CONTRIBUTIONS
                      ProfileScreenTabs(text: "Essentially"),
                      // SAVED
                      ProfileScreenTabs(text: "FitMartial"),
                      // COMMENTS
                      ProfileScreenTabs(text: "Yoga"),
                      // MEDIA
                      ProfileScreenTabs(text: "Gymnastics"),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                //Top Trainer & See All
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Trainer",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                              return TopTrainerPage(); // Navigate to the TopTrainers page
                            }));
                          },
                          child: InkWell(
                            child: Text(
                              "See All",
                              style: GoogleFonts.poppins(
                                color: Palette.selectednavicons,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 3),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Palette.selectednavicons,
                          size: 24,
                        ),
                      ],
                    ),
                  ],
                ),
                TrainersView(),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "All Trainers",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "See All",
                          style: GoogleFonts.poppins(
                            color: Palette.selectednavicons,
                          ),
                        ),
                        SizedBox(width: 3),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Palette.selectednavicons,
                          size: 24,
                        ),
                      ],
                    ),
                  ],
                ),
                AllTrainers(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(currentIndex: 0,),
    );
  }
}


//Trainer List
class TrainerList extends StatelessWidget {
  const TrainerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24,bottom: 24),
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
                backgroundImage: NetworkImage(
                  'https://i.pinimg.com/564x/f9/a7/a3/f9a7a30e3f6cada77cbd30f47f5a430f.jpg'),
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
                            fontWeight: FontWeight.w600,
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
                            fontWeight: FontWeight.w600,
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

