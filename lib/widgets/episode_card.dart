import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class EpisodeCard extends StatelessWidget {
  final String name;
  final String episode;
  final String airdate;
  const EpisodeCard(
      {super.key,
      required this.name,
      required this.episode,
      required this.airdate});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                fit: BoxFit.fill,
                height: 100,
                width: 80,
                image: AssetImage('images/earth.jpg'),
              ),
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Text(airdate, style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      RatingBar.builder(
                        itemSize: 18,
                        allowHalfRating: true,
                        initialRating: 4,
                        minRating: 2,
                        glow: true,
                        itemBuilder: (BuildContext context, int index) {
                          return const Icon(
                            Icons.star,
                            color: Colors.amber,
                          );
                        },
                        onRatingUpdate: (double value) {},
                      ),
                      const SizedBox(width: 40,),
                      const Text('4.0')
                    ],
                  ),
                
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blue,),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                  child: Text(episode, style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                        fontSize: 12,
                        color: Colors.blue
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
