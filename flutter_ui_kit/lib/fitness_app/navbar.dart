import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/fitness_app/Pallete.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:simple_icons/simple_icons.dart';

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
    );
  }
}
