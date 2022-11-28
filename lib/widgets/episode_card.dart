import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: const EdgeInsets.symmetric(vertical: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(name),
          Text(episode),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                RatingBar.builder(
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
          Text(airdate)
        ],
      ),
    );
  }
}
