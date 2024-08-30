import 'package:flutter/material.dart';
import 'package:rickandmorty/model/location.dart';
import 'package:rickandmorty/services/location_service.dart';
import 'package:get/get.dart';

class LocationsController extends GetxController {
  final page = 1.obs;
  final isLoading = false.obs;
  final hasException = false.obs;

  final _service = LocationServices();

  final locations = <Location>[].obs;

  final ScrollController scrollController = ScrollController();
  final int expectedPageSize = 20;


  @override
  void onInit() {
    super.onInit();
    fetchLocations(page.value);
  }

  void fetchLocations(int page) async {
    isLoading.value = true;
    final result = await _service.getResult(page);

    if (result.hasException) {
      hasException.value = true;
      isLoading.value = false;
      Get.snackbar(
        'Error',
        'Failed to fetch locations. Please try again.',
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    if (result.isNotLoading) {
      isLoading.value = false;
    }
    if (hasException.isFalse && isLoading.isFalse) {
      final List<dynamic> listResult = result.data!["locations"]['results'];
      for (var element in listResult) {
        locations.add(Location.fromJson(element));
      }

      if (listResult.length < expectedPageSize) {
        return;
      } else {
        fetchLocations(page + 1);
      }
    }
  }
}