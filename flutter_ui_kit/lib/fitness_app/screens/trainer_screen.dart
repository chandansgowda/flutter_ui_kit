import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/fitness_app/consts/Pallete.dart';
import 'package:flutter_ui_kit/fitness_app/home_screen_widgets/navbar.dart';
import 'package:flutter_ui_kit/fitness_app/screens/toptrainer_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TrainerScreen extends StatelessWidget {
  const TrainerScreen({super.key});

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
            backgroundImage: NetworkImage(
                'https://w0.peakpx.com/wallpaper/170/826/HD-wallpaper-spider-black-blue-game-hero-logo-movie-spiderman-super-super-hero.jpg'),
            radius: 24,
          ),
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
            padding: const EdgeInsets.only(left:24,right: 24),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Category List",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Palette.accentColor,
                ),),
                SizedBox(height: 5,),
                Text("Find a Trainer",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: Palette.navicons
                ),),
                SizedBox(height: 10,),
                //Search Box
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xFFE0E0E0),
                    width: 1/2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search your trainer',hintStyle: GoogleFonts.poppins(
                          fontSize: 12
                        ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          prefixIcon: Icon(Icons.search_outlined,size: 30,color: Colors.blue,)
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Categories(name: "Fitness", specialization: "35 Trainer",
                        imageUrl: "https://i.pinimg.com/564x/39/28/59/3928590c6abf5debc6c7ad59c974b9ad.jpg"),
                    Categories(name: "ArtsDance", specialization: "35 Trainer",
                        imageUrl: "https://i.pinimg.com/564x/ad/51/d1/ad51d1f52f7c44818290d99e2e4cd19f.jpg"),

                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Categories(name: "FitMartial", specialization: "22 Trainer",
                        imageUrl: "https://i.pinimg.com/564x/04/69/77/0469770c4ecc7fa8e9d5232e08f8ff40.jpg"),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return TopTrainerPage();
                        }));
                      },
                      child: Categories(
                        name: "Yoga",
                        specialization: "45 Trainer",
                        imageUrl: "https://i.pinimg.com/564x/f4/6c/c4/f46cc436a7a82a403aebf5c27ec02789.jpg",
                      ),
                    ),


                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Categories(name: "Ushu", specialization: "35 Trainer",
                        imageUrl: "https://i.pinimg.com/564x/e9/63/54/e9635478150221f31635da7cde12a12f.jpg"),
                    Categories(name: "Karate", specialization: "45 Trainer",
                        imageUrl: "https://i.pinimg.com/564x/2b/e1/f1/2be1f1c1afc13fe9c3e580569b034715.jpg"),

                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Categories(name: "High Jump", specialization: "5 Trainer",
                        imageUrl: "https://i.pinimg.com/564x/14/02/30/14023055fe672b935f682e1832ff5e58.jpg"),
                    Categories(name: "Fitness", specialization: "35 Trainer",
                        imageUrl: "https://i.pinimg.com/564x/39/28/59/3928590c6abf5debc6c7ad59c974b9ad.jpg"),

                  ],
                ),


              ],
            ),
          )

        ],
      ),
      bottomNavigationBar: BottomNav(currentIndex: 1,),
    );
  }
}
class Categories extends StatelessWidget {
  final String name;
  final String specialization;
  final String imageUrl;


  const Categories({
    Key? key,
    required this.name,
    required this.specialization,
    required this.imageUrl,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 170,
      width: 167,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          // Content on top of the image
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  specialization,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
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


