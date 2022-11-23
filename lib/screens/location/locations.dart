
import 'package:flutter/material.dart';
import 'package:fluttergraphql/widgets/location_card.dart';
import 'package:get/get.dart';
import '../../controller/graphQL_controller.dart';
import '../../model/data_model.dart';

class LocationsPage extends StatelessWidget {
  LocationsPage({super.key});
  final GraphQLController _graphQLController = Get.put(GraphQLController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _graphQLController.locationList.length,
        itemBuilder: (context, index){
          Location location = _graphQLController.getLocation as Location;
          if (_graphQLController.isLoading.isTrue) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
            return Text(location.name);
          }
      }),
    );
  }
}
