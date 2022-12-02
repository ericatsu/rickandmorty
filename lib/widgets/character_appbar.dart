import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'circle_button.dart';

class CharacterAppBar extends StatelessWidget {
  const CharacterAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    //final double width = MediaQuery.of(context).size.width;

    return FlexibleSpaceBar(
      title: Text(
        'Characters',
        style: GoogleFonts.firaSans(
          textStyle: const TextStyle(
            color: Colors.blue,
            fontSize: 22,
          ),
        ),
      ),
      background: Container(
        color: Colors.white,
        child: Image.asset(
          'images/rbg.png',
          height: height * 0.50,
          fit: BoxFit.contain,
        ),
      ),
      // padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
      // height: height * 0.38,
      // width: double.infinity,
      // decoration: const BoxDecoration(
      //   borderRadius: BorderRadius.only(
      //     bottomLeft: Radius.circular(17),
      //     bottomRight: Radius.circular(17),
      //   ),
      // ),
      // child: Column(
      //   children: [
      //     // Row(
      //     //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     //   crossAxisAlignment: CrossAxisAlignment.start,
      //     //   children: [
      //     //     // Builder(builder: (context) {
      //     //     //   return GestureDetector(
      //     //     //     onTap: () {
      //     //     //       Scaffold.of(context).openDrawer();
      //     //     //     },
      //     //     //     child: Image.asset("images/menu.png", height: 45, width: 45),
      //     //     //   );
      //     //     // }),
      //     //     // CircleButton(
      //     //     //   icon: Icons.search,
      //     //     //   onPressed: () {},
      //     //     // ),
      //     //   ],
      //     // ),
      //     Image.asset(
      //       'images/bg.png',
      //       height: height * 0.30,
      //       fit: BoxFit.contain,
      //     ),
      //   ],
      // ),
    );
  }
}
