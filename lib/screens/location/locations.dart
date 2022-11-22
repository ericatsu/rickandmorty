
import 'package:flutter/material.dart';
import 'package:fluttergraphql/controller/location/locations_controller.dart';
import 'package:fluttergraphql/widgets/location_card.dart';
import 'package:get/get.dart';

import '../../controller/character/allcharacters_controller.dart';

class LocationsPage extends StatelessWidget {
  LocationsPage({super.key});
  final controller = Get.put(AllCharactersController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Text("name"),
    );
  }
}
