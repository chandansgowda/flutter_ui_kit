import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeTypeListItem extends StatelessWidget {
  final String coffeeType;
  final bool isActive;

  CoffeeTypeListItem(this.coffeeType, this.isActive);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        coffeeType,
        style: GoogleFonts.pacifico(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: isActive ? Colors.orange : Colors.white
        ),
      ),
    );
  }
}
