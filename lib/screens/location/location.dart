import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/location/location_controller.dart';

class LocationPage extends StatelessWidget {
   LocationPage({super.key});

  final controller = Get.put(LocationController());

  @override
  Widget build(BuildContext context) {
    final location = controller.location;
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.location.name.toString()),
      ),
      body: Column(
        children: [
          Text(location.name.toString()),
          Text(location.dimension.toString())
        ],
      ),
    );
  }
}