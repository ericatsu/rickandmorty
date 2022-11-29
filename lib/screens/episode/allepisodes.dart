import 'package:flutter/material.dart';
import 'package:fluttergraphql/widgets/episode_top.dart';
import 'package:get/get.dart';

import '../../controller/episode/episodes_controller.dart';
import '../../widgets/episode_card.dart';
import '../../widgets/location_card.dart';

class EpisodesPage extends StatelessWidget {
  EpisodesPage({super.key});
  final controller = Get.put(EpisodesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const EpisodeTop(),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Obx(
                    () => ListView.builder(
                        controller: controller.scrollController,
                        itemCount: controller.episodes.length,
                        itemBuilder: (context, index) {
                          if (controller.isLoading.isTrue) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed('/episode', arguments: {'index': index});
                            },
                            child: EpisodeCard(
                              // img: Image(
                              //   image: NetworkImage(controller.location[index].image),
                              // ),
                              name: controller.episodes[index].name,
                              episode: controller.episodes[index].episode,
                              airdate: controller.episodes[index].air_date,
                            ),
                          );
                        }),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}