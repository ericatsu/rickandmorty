import 'package:flutter/material.dart';

class SeasonChip extends StatelessWidget {
  const SeasonChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 6,
      children: const [
        Chip(
            padding: EdgeInsets.all(8.0),
            shadowColor: Colors.blue,
            backgroundColor: Colors.blueAccent,
            label: Text('data')),
        Chip(
            padding: EdgeInsets.all(8.0),
            shadowColor: Colors.blue,
            backgroundColor: Colors.blueAccent,
            label: Text('data')),
        Chip(
            padding: EdgeInsets.all(8.0),
            shadowColor: Colors.blue,
            backgroundColor: Colors.blueAccent,
            label: Text('data')),
        Chip(
            padding: EdgeInsets.all(8.0),
            shadowColor: Colors.blue,
            backgroundColor: Colors.blueAccent,
            label: Text('data')),
      ],
    );
  }
}