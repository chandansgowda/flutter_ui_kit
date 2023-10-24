import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/fitness_app/consts/Pallete.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:simple_icons/simple_icons.dart';

import '../screens/home_screen.dart';
import '../screens/trainer_screen.dart';

class BottomNav extends StatefulWidget {
  final int currentIndex; // Pass the current index as a parameter

  const BottomNav({Key? key, required this.currentIndex}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    // Set the initial index based on the provided currentIndex
    _selectedIndex = widget.currentIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 0) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
        return FitnessApp();
      }));
    } else if (index == 1) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
        return TrainerScreen();
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      selectedItemColor: Palette.selectednavicons, // Selected icon color
      unselectedItemColor: Palette.navicons, // Unselected icon color
      currentIndex: _selectedIndex, // Set the current index
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
      showSelectedLabels: true,
      showUnselectedLabels: true,
      onTap: _onItemTapped,
    );
  }
}
