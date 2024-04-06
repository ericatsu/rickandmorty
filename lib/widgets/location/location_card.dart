import 'package:rickandmorty/shared/exports.dart';

class LocationCard extends StatelessWidget {
  final String name;
  final String type;
  final String image;
  const LocationCard({super.key, required this.name, required this.type, required this.image});

  @override
  Widget build(BuildContext context) {
        final double height = MediaQuery.of(context).size.height;
    final double width= MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child:  Image(
              height: height * 0.2,
              width: width * 0.78,
              fit: BoxFit.fill,
              image: AssetImage(image),
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
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
