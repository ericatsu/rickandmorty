import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'circle_button.dart';

class LocationAppBar extends StatelessWidget {
  const LocationAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      //height: height * 0.11,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Locations",
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              CircleButton(
                icon: Icons.search,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
