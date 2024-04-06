import 'package:rickandmorty/shared/exports.dart';

class SeasonChip extends StatelessWidget {
  const SeasonChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      child: Wrap(
        spacing: 16,
        alignment: WrapAlignment.start,
        runSpacing: 10,
        children: const [
          Chip(
              padding: EdgeInsets.all(10),
              shadowColor: Colors.blue,
              backgroundColor: Color.fromARGB(255, 206, 220, 243),
              label: Text('S 1')),
          Chip(
              padding: EdgeInsets.all(10),
              shadowColor: Colors.blue,
              backgroundColor: Color.fromARGB(255, 206, 220, 243),
              label: Text('S 2')),
          Chip(
              padding: EdgeInsets.all(10),
              shadowColor: Colors.blue,
              backgroundColor: Color.fromARGB(255, 206, 220, 243),
              label: Text('S 3')),
          Chip(
              padding: EdgeInsets.all(10),
              shadowColor: Colors.blue,
              backgroundColor: Color.fromARGB(255, 206, 220, 243),
              label: Text('S 4')),
          Chip(
              padding: EdgeInsets.all(10),
              shadowColor: Colors.blue,
              backgroundColor: Color.fromARGB(255, 206, 220, 243),
              label: Text('S 5')),
          Chip(
              padding: EdgeInsets.all(10),
              shadowColor: Colors.blue,
              backgroundColor: Color.fromARGB(255, 206, 220, 243),
              label: Text('S 6')),
        ],
      ),
    );
  }
}
