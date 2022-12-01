import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final GestureTapCallback onPressed;
  const CircleButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(
        height: 35,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(10),
                      right: Radius.circular(10),
                    ),
          color: Colors.blue,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
