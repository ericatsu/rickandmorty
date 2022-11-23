
import 'package:flutter/material.dart';
import 'package:fluttergraphql/controller/location/locations_controller.dart';
import 'package:fluttergraphql/widgets/location_card.dart';
import 'package:get/get.dart';

class LocationsPage extends StatelessWidget {
  LocationsPage({super.key});
  final controller = Get.put(LocationsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      //The Body of the Home Page
      body: Obx(
        () => GridView.builder(
            controller: controller.scrollController,
            itemCount: controller.locations.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1),
            itemBuilder: (context, index) {
              if (controller.isLoading.isTrue) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return GestureDetector(
                onTap: () {
                  Get.toNamed('/location', arguments: {'index': index});
                },
                child: LocationCard(
                  // img: Image(
                  //   image: NetworkImage(controller.location[index].image),
                  // ),
                  name: controller.locations[index].name.toString(), type: controller.locations[index].type.toString(),
                ),
              );
            }),
      ),
    );
  }
}
