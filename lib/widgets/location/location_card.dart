import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationCard extends StatelessWidget {
  final String name;
  final String type;
  const LocationCard({super.key, required this.name, required this.type});

   
  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
             ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/earth.jpg'),
              ),
             ),
             const SizedBox(
            height: 8,
          ),
            Text(
            name,
            style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
            Text(
            type,
            style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}