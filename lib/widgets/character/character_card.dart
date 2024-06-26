import 'package:rickandmorty/shared/exports.dart';

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
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child:
              SizedBox(height: height * 0.175, width: width * 0.28, child: img),
        ),
        const Spacer(),
        SizedBox(
          width: width * 0.45,
          child: Text(
            name,
            textAlign: TextAlign.center,
            maxLines: 1,
            style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        const Spacer(),
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
            const Text(','),
            const SizedBox(
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
        const Spacer()
      ],
    );
  }
}
