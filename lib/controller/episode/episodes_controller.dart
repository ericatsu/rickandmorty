// import 'package:flutter/material.dart';
// import 'package:fluttergraphql/model/episode.dart';
// import 'package:get/get.dart';

// import '../../services/service.dart';

// class EpisodeController extends GetxController {
//   final page = 2.obs;
//   final isLoading = false.obs;
//   final hasException = false.obs;

//   final _service = Services();

//   final episode = <Episode>[].obs;

//   final ScrollController scrollController = ScrollController();

//   @override
//   void onInit() {
//     fetchEpisodes(page.value);
//     scrollController.addListener(() {
//       if (scrollController.offset >=
//           scrollController.position.maxScrollExtent) {
//         page.value++;
//         fetchEpisodes(page.value);
//       }
//     });
//     super.onInit();
//   }

//   void fetchEpisodes(int page) async {
//     isLoading.value = true;
//     final result = await _service.getResult(page);

//     if (result.hasException) {
//       hasException.value = true;
//       isLoading.value = false;
//       print(result.exception);
//     }

//     if (result.isNotLoading) {
//       isLoading.value = false;
//     }
//     if (hasException.isFalse && isLoading.isFalse) {
//       final List<dynamic> listResult = result.data!['episode'];
//       for (var element in listResult) {
//         Episode.fromJson(element);
//       }
//     }
//   }
// }
