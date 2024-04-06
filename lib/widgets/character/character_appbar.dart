import 'package:rickandmorty/shared/exports.dart';

class CharacterAppBar extends StatelessWidget {
  const CharacterAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return FlexibleSpaceBar(
      stretchModes: const [StretchMode.zoomBackground],
      background: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Image.asset(
          'assets/images/imgbg.png',
          fit: BoxFit.contain,
          width: width * 0.75,
          height: height * 0.40,
        ),
      ),
    );
  }
}
