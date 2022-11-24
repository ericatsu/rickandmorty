import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  final String dimension;
  final String name;
  final String type;
  const LocationCard({super.key, required this.name, required this.type, required this.dimension});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Container(
          margin:const EdgeInsets.all(8.0),
          child: Card(
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                ),
                ListTile(
                  title: Text(name),
                  subtitle: Text(type),
                ),
                Text(dimension)
              ],
            ),
          ),
        );
  }
}