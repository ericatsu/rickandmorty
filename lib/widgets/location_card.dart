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

    return Container(
          margin:const EdgeInsets.all(8.0),
          child: Card(
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: InkWell(
              onTap: () => print("on tap"),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: img
                  ),
                  ListTile(
                    title: Text(name),
                    subtitle: Text(type),
                  ),
                ],
              ),
            ),
          ),
        );
  }
}