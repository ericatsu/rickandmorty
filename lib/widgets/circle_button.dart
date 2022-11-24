import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final GestureTapCallback onPressed;
  const CircleButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        // borderRadius: BorderRadius.horizontal(
        //             left: Radius.circular(30),
        //             right: Radius.circular(30),
        //           ),
        color: kPrimaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
