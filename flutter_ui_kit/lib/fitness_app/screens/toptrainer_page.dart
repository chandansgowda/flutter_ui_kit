import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/fitness_app/consts/pallete.dart';
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
      body: ListView(
        children: [
          Padding(
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
                      ListofTrainers(name: "Bartik Rosea",money: "\$25",specialization: "Yoga Trainer",img:"https://i.pinimg.com/564x/05/ad/d5/05add5613d6d12bfdb7fb70c343c0328.jpg"),
                      ListofTrainers(name: "Elena Ratio",money: "\$15",specialization: "Fitness Trainer",img:"https://i.pinimg.com/564x/03/55/11/0355119fd1b7d8847d82163e26ffb5bc.jpg"),
                      ListofTrainers(name:"Eon Tenison",money: "\$15",specialization: "Yoga Trainer",img:"https://i.pinimg.com/564x/5f/21/b7/5f21b7e584f46751be06eb715d6edd5a.jpg"),
                      ListofTrainers(name: "Emiliano",money: "\$35",specialization: "Ushu Trainer",img:"https://i.pinimg.com/564x/51/d9/31/51d931334378b95aa90b255f20530278.jpg"),
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
                      AllYogaTrainers(money: "\$12.00",desc: "A uique strength and flexibility\ntraining with Involved...",
                          imgUrl: "https://i.pinimg.com/564x/a0/d7/00/a0d700fd39679c5da92ae5e7b80c97dd.jpg",namee: "Warren Craig",),
                      SizedBox(height: 10,),
                      AllYogaTrainers(money: "\$22.00",desc: "A uique strength and flexibility\ntraining with Involved...",
                        imgUrl: "https://i.pinimg.com/736x/8c/4a/51/8c4a51e005629a084505649079b0a949.jpg",namee: "Zendaya",),
                      SizedBox(height: 10,),
                      AllYogaTrainers(money: "\$12.00",desc: "A uique strength and flexibility\ntraining with Involved...",
                        imgUrl: "https://i.pinimg.com/564x/e8/df/01/e8df017b8459c3fdc951da06ce0be115.jpg",namee: "Emma Watson",),
                      SizedBox(height: 10,),
                      AllYogaTrainers(money: "\$25.00",desc: "A uique strength and flexibility\ntraining with Involved...",
                        imgUrl: "https://i.pinimg.com/564x/54/38/68/543868e17fd962899bc2a2706452dec7.jpg",namee: "John Cena",),
                    ],
                  ),
                )],
            ),
          ),
        ],
      ),
    );
  }
}


class ListofTrainers extends StatelessWidget {
  final String name;
  final String money;
  final String specialization;
  final String img;

  const ListofTrainers({
    Key? key,
    required this.name,
    required this.money,
    required this.specialization,
    required this.img,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 150,
      margin: EdgeInsets.only(right: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFF1F1F1),
            blurRadius: 4,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x11F1F1F1),
            blurRadius: 28,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0xFFF1F1F1),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0xFFF1F1F1),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(img),
          ),
          SizedBox(height: 5,),
          Text(
            name,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
          Text(
            specialization,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.normal,
              fontSize: 10,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    money,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  Text("Per Minutes",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                        fontSize: 10,
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
  final String imgUrl;
  final String namee;
  final String desc;
  final String money;
  const AllYogaTrainers({Key? key,
  required this.imgUrl,
  required this.namee,
  required this.desc,
  required this.money,


  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFF1F1F1),
            blurRadius: 4,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x11F1F1F1),
            blurRadius: 28,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0xFFF1F1F1),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0xFFF1F1F1),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              // Circular Image
              Container(
                width: 60,
                height: 60,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(imgUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    // Circular Image (Already in the Container)
                    Positioned(
                      bottom: -7,
                      right: 0,
                      left: 0,
                      child: Container(
                        width: 60,
                        height: 20,  // Adjust this height as needed
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFF1F1F1),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 9),
                            Icon(Icons.star, color: Colors.amber, size: 9),
                            Icon(Icons.star, color: Colors.amber, size: 9),
                            Icon(Icons.star, color: Colors.amber, size: 9),
                            Icon(Icons.star_border, color: Colors.amber, size: 9),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Name and Share Icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          namee,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.share),
                          onPressed: () {
                            // Handle share action here
                          },
                        ),
                      ],
                    ),
                    Text(
                      "Yoga Trainer",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      desc,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              // Rating Stars

            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left:10),
                height: 45,
                width: 80,
                decoration: BoxDecoration(
                  color: Color(0xFFF2F2F9),
                  borderRadius: BorderRadius.circular(10)

                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(money,style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
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
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 45,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1/2,color: Color(0xFFEAEAEA))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.wechat_sharp, color: Palette.textblack, size: 20),
                    Text("Message", style: GoogleFonts.poppins(fontSize: 12, color: Palette.accentColor)),
                    Container(
                      width: 1,
                      height: 30,
                      color: Color(0xFFEAEAEA),
                      margin: EdgeInsets.symmetric(vertical: 7),
                    ),
                    Icon(Icons.call, color: Palette.textblack, size: 20),
                    Text("Call", style: GoogleFonts.poppins(fontSize: 12, color: Palette.accentColor)),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.all(5),
                height: 45,
                width: 90,
                decoration: BoxDecoration(
                  color: Palette.selectednavicons,
                  borderRadius: BorderRadius.circular(10)

                ),
                child: Center(
                  child: Text("Join",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  ),),
                ),
              ),
            ],
          )
        ],
      ),

    );
  }
}




