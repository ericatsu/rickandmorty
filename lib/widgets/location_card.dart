import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  final Image img;
  final String name;
  final String type;
  const LocationCard({super.key, required this.img, required this.name, required this.type});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.3,
                  width: width * 0.1,
                  child: img,
                ),
                Text(name),
                Text(type)
              ],
            ),
            
          ),
        ],
      ),
    );
  }
}