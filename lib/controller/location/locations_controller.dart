import 'package:flutter/material.dart';
import 'package:fluttergraphql/model/location.dart';
import 'package:get/get.dart';

import '../../services/service.dart';

class LocationsController extends GetxController {
  final page = 1.obs;
  final isLoading = false.obs;
  final hasException = false.obs;

  final _service = Services();

  final location = <Location>[].obs;

  final ScrollController scrollController = ScrollController();


  @override
  void onInit() {
    fetchLocations(page.value);
    scrollController.addListener(() {
      if (scrollController.offset >=
          scrollController.position.maxScrollExtent) {
        page.value++;
        fetchLocations(page.value);
      }
    });
    super.onInit();
  }

  void fetchLocations(int page) async {
    isLoading.value = true;
    final result = await _service.getResult(page);

    if (result.hasException) {
      hasException.value = true;
      isLoading.value = false;
      print(result.exception);
    }

    if (result.isNotLoading) {
      isLoading.value = false;
    }
    if (hasException.isFalse && isLoading.isFalse) {
      final List<dynamic> listResult = result.data!["location"]['residents'];
      for (var element in listResult) {
        location.add(Location.fromJson(element));
      }
    }
  }
}