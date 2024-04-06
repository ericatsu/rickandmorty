import 'package:rickandmorty/shared/exports.dart';

class Greetings extends StatelessWidget {
  final String type;
  final String greeting;
  const Greetings({super.key, required this.type, required this.greeting});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    //final double width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          type,
          style: TextStyle(
            fontSize: 24,
            foreground: Paint()..shader = authColors,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Text(
          greeting,
          style: const TextStyle(
            fontSize: 13.5,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
