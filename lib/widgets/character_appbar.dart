import 'package:flutter/material.dart';

import 'circle_button.dart';

class CharacterAppBar extends StatelessWidget {
  const CharacterAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
      height: height * 0.38,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(17),
          bottomRight: Radius.circular(17),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5],
          colors: [
            Colors.white,
            Color.fromARGB(255, 194, 216, 235),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Builder(builder: (context) {
                return GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Container(
                    //padding: const EdgeInsets.all(6.0),
                    child:
                        Image.asset("images/menu.png", height: 45, width: 45),
                  ),
                );
              }),
              CircleButton(
                icon: Icons.search,
                onPressed: () {},
              ),
            ],
          ),
          Image.asset(
            'images/bg.png',
            height: height * 0.30,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
