////////((((((((TAB BAAAAARRRRR)))))))/////////

import 'package:flutter/material.dart';
import 'categories_screen.dart';
import 'favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Widget> _pages = [
    CategoriesScreen(),
    FavoritesScreen(),
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Text('DRAWER!!!'),
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedPageIndex,
          selectedItemColor: Colors.amberAccent,
          unselectedItemColor: Colors.grey,
          onTap: _selectPage,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.food_bank), label: 'Categories'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
          ]),
    );
  }
}
