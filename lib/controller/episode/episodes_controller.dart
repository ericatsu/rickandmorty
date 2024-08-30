import 'package:flutter/material.dart';
import 'package:rickandmorty/model/episode.dart';
import 'package:rickandmorty/services/episode_service.dart';
import 'package:get/get.dart';

class EpisodesController extends GetxController {
  final page = 2.obs;
  final isLoading = false.obs;
  final hasException = false.obs;

  final _service = EpisodeServices();

  final episodes = <Episode>[].obs;

  final ScrollController scrollController = ScrollController();
  final int expectedPageSize = 20;

  @override
  void onInit() {
    fetchEpisodes(page.value);
    super.onInit();
  }

  void fetchEpisodes(int page) async {
    isLoading.value = true;
    final result = await _service.getResult(page);

    if (result.hasException) {
      hasException.value = true;
      isLoading.value = false;
      Get.snackbar(
        'Error',
        'Failed to fetch episodes. Please try again.',
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    if (result.isNotLoading) {
      isLoading.value = false;
    }
    if (hasException.isFalse && isLoading.isFalse) {
      final List<dynamic> listResult = result.data!["episodes"]["results"];
      for (var element in listResult) {
        episodes.add(Episode.fromJson(element));
      }

      if (listResult.length < expectedPageSize) {
        return;
      } else {
        fetchEpisodes(page + 1);
      }
    }
  }
}
