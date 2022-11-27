import 'package:flutter/material.dart';
import 'package:fluttergraphql/widgets/episode_top.dart';
import 'package:get/get.dart';

import '../../controller/episode/episodes_controller.dart';
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Obx(
                    () => GridView.builder(
                        controller: controller.scrollController,
                        itemCount: controller.episodes.length,
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
                              Get.toNamed('/episode', arguments: {'index': index});
                            },
                            child: LocationCard(
                              // img: Image(
                              //   image: NetworkImage(controller.location[index].image),
                              // ),
                              name: controller.episodes[index].name,
                              type: controller.episodes[index].episode,
                              //dimension: controller.episodes[index].air_date,
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