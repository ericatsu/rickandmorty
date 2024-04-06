import 'dart:math';

import 'package:rickandmorty/shared/exports.dart';

class CharacterBox extends StatefulWidget {
  final String name;
  final String status;
  final String species;
  final String gender;

  const CharacterBox({super.key, required this.name, required this.status, required this.species, required this.gender,});

  @override
  State<CharacterBox> createState() => _CharacterBoxState();
}

class _CharacterBoxState extends State<CharacterBox> {
  late Color _backgroundColor;

  @override
  void initState() {
    super.initState();
    _setRandomBackgroundColor();
  }

  void _setRandomBackgroundColor() {
    final rng = Random();
    final randomInt = rng.nextInt(2);
    _backgroundColor = randomInt == 0 ? Colors.blue : Colors.yellow;
  }
  
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      color: _backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.name,
            style: GoogleFonts.openSans(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              height: height * 0.35,
              width: width * 0.75,
              padding: const EdgeInsets.all(20),
             decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Status :${widget.status}',
                  style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Text('Species :${widget.species}',
                  style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Text('Gender :${widget.gender}',
                  style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
               ),
             ),
          ],
        ),
      ),
    );
  }
}