import 'package:flutter/material.dart';

class DrawerModel extends StatelessWidget {
  const DrawerModel(
      {Key? key,
      required this.name,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  final String name;
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: Color(0xFF0B3C5D),
            ),
            const SizedBox(
              width: 40,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 20, color: Color(0xFF0B3C5D)),
            )
          ],
        ),
      ),
    );
  }
}
