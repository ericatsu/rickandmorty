import 'package:rickandmorty/shared/exports.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Image.asset("assets/images/menu.png", height: 28, width: 28),
                    ),
                  );
                }
              );
  }
}