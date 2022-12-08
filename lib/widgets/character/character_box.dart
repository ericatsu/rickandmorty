import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CharacterBox extends StatelessWidget {
  final String name;
  final String status;
  final String species;
  final String gender;
  // final String origine;
  // final String location;
  // final String fepisode;

  const CharacterBox({super.key, required this.name, required this.status, required this.species, required this.gender});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name,
          style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            height: 70,
            width: 100,
            color: Colors.blue,
            margin: const EdgeInsets.all(350),
            padding: const EdgeInsets.all(30),
           decoration: BoxDecoration(
            border: Border.all(color: Colors.white)
           ),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Status :$status',
                style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Text('Species :$species',
                style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Text('Gender :$gender',
                style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                // Text('Origine :$origine'),
                // Text('Location :$location'),
                // Text('First episode :$fepisode')
              ],
             ),
           ),
        ],
      ),
    );
  }
}