import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../model/character.dart';
import '../../services/character_service.dart';

class AllCharactersController extends GetxController {
  final page = 1.obs;
  final isLoading = false.obs;
  final hasException = false.obs;

  final _service = CharacterServices();
  final characters = <Character>[].obs;
  final ScrollController scrollController = ScrollController();
  final int expectedPageSize = 20;

  @override
  void onInit() {
    super.onInit();
    fetchCharacters(page.value);
  }

  void fetchCharacters(int page) async {
    isLoading.value = true;

    final result = await _service.getResult(page);

    if (result.hasException) {
      hasException.value = true;
      isLoading.value = false;
      Get.snackbar(
        'Error',
        'Failed to fetch characters. Please try again.',
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    if (result.isNotLoading) {
      isLoading.value = false;
    }

    if (hasException.isFalse && isLoading.isFalse) {
      final List<dynamic> listResult = result.data!['characters']['results'];

      for (var element in listResult) {
        characters.add(Character.fromJson(element));
      }

      if (listResult.length < expectedPageSize) {
        return;
      } else {
        fetchCharacters(page + 1);
      }
    }
  }
}
