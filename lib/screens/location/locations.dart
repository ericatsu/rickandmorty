
import 'package:flutter/material.dart';
import 'package:fluttergraphql/controller/location/locations_controller.dart';
import 'package:get/get.dart';

class LocationsPage extends StatelessWidget {
  LocationsPage({super.key});
  final controller = Get.put(LocationsController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Text("name"),
    );
  }
}
