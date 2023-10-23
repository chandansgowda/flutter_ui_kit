import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/fitness_app/consts/Pallete.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:simple_icons/simple_icons.dart';

import '../screens/home_screen.dart';
import '../screens/trainer_screen.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(SimpleIcons.homeadvisor),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.weightLifter),
          label: 'Trainer',
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.mail),
          label: 'Message',
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.faceManProfile),
          label: 'Profile',
        ),
      ],
      selectedItemColor: Palette.selectednavicons,
      unselectedItemColor: Palette.navicons,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      onTap: (int index) {
        if (index == 0) {
          Navigator.of(context).pushReplacement(PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => FitnessApp(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return child;
            },
          ));
        } else if (index == 1) {
          Navigator.of(context).pushReplacement(PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => TrainerScreen(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return child;
            },
          ));
        }
      },
    );
  }
}
