import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EpisodeTop extends StatelessWidget {
  const EpisodeTop({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: height * 0.38,
          child: Image.asset(
            'images/pilot.jpg',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.6, 1.2],
                colors: [
                 Colors.white,
                 Colors.transparent
              ])),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Pilot',
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue,
                        ),
                      )),
                      Text(
                        'December 2, 2013 S01E01 32min',
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et sapien nisi. Vestibulum tincidunt elit congue dapibus pulvinar. Vestibulum mattis.',
                    style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ),
                ],
              ),
            ),
          ),
        )
      ],
      // child: Container(
      //   width: double.infinity,
      //   height: height * 0.40,
      //   decoration: const BoxDecoration(
      //       image: DecorationImage(image: AssetImage('images/pilot.jpg'),
      //       fit: BoxFit.cover,
      //       ),
      //       gradient: LinearGradient(
      //         begin: Alignment.bottomCenter,
      //         end: Alignment.center,
      //         stops: [0.4, 0.1],
      //         colors: [
      //           Colors.red,
      //           Colors.transparent
      //         ]),
      //       ),
      // ),
    );
  }
}
