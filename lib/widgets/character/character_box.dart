import 'package:rickAndmorty/shared/exports.dart';

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
    final double height = MediaQuery.of(context).size.height;

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
            height: height * 0.4,
            width: double.infinity,
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(20),
           decoration: BoxDecoration(
            border: Border.all(color: Colors.white)
           ),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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