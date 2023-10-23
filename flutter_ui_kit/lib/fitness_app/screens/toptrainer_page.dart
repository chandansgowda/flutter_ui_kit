import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/fitness_app/consts/Pallete.dart';
import 'package:flutter_ui_kit/fitness_app/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class TopTrainerPage extends StatelessWidget {
  const TopTrainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        leading: GestureDetector(
        onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return FitnessApp(); // Navigate to the TopTrainers page
      }));},
          child: InkWell(
            child: Icon(MdiIcons.arrowLeft,
            color: Palette.accentColor,
            size: 24,),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 24,right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
          "Top Trainer",
          style: GoogleFonts.poppins(
            color: Palette.accentColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 10,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ListofTrainers(),
              ListofTrainers(),
              ListofTrainers(),
              ListofTrainers(),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Text(
          "All Yoga Trainer",
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
            SizedBox(height: 10,),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              AllYogaTrainers(),
              SizedBox(height: 10,),
              AllYogaTrainers(),
              SizedBox(height: 10,),
              AllYogaTrainers(),
            ],
            ),
        )],
        ),
      ),
    );
  }
}


class ListofTrainers extends StatelessWidget {
  const ListofTrainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 150,
      margin: EdgeInsets.only(right: 14),
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
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage("https://i.pinimg.com/564x/e9/06/6e/e9066e3283dc73f523a75e67f6bde7ae.jpg"),
          ),
          SizedBox(height: 5,),
          Text("Batrik Rosea",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12
              )),
          Text("Yoga Trainer",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 10
              )),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.amber, size: 14),
              Icon(Icons.star, color: Colors.amber, size: 14),
              Icon(Icons.star, color: Colors.amber, size: 14),
              Icon(Icons.star, color: Colors.amber, size: 14),
              Icon(Icons.star_border_outlined, color: Colors.amber, size: 14),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 4),
            width: 110,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFFF2F2F9),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("\$25.00",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12
                  ),),
                  Text("Per Minutes",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal,
                          fontSize: 10
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AllYogaTrainers extends StatelessWidget {
  const AllYogaTrainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Text("Hue Hue"),
    );
  }
}

