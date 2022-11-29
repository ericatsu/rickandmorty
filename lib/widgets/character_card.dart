// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CharacterCard extends StatelessWidget {
  final Image img;
  final String name;
  final String species;
  final String status;

  const CharacterCard(
      {super.key,
      required this.name,
      required this.species,
      required this.status,
      required this.img});

  @override
  Widget build(BuildContext context) {
    // final double height = MediaQuery.of(context).size.height;
    // final double width = MediaQuery.of(context).size.width;

    return Card(
      elevation: 0,
      color: Colors.blueAccent[80],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container( child: img),
          Spacer(),
          Text(
            name,
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                species,
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(','),
              SizedBox(
                width: 5,
              ),
              Text(
                status,
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Spacer()
        ],
      ),
    );
  }
}
