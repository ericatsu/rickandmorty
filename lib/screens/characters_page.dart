import 'package:flutter/material.dart';
import 'package:fluttergraphql/controller/allcharacters_controller.dart';
import 'package:fluttergraphql/widgets/character_card.dart';
import 'package:get/get.dart';

class CharactersPage extends StatelessWidget {
  CharactersPage({super.key});
  final controller = Get.put(AllCharactersController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      //The Body of the Home Page
      body: Obx(() => GridView.builder(
          controller: controller.scrollController,
          itemCount: controller.characters.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            if (controller.isLoading.isTrue) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return GestureDetector(
              onTap: () {
                Get.toNamed('/character_page', arguments: {'index': index});
              },
              child: CharacterCard(
                img: Image(
                  image: NetworkImage(controller.characters[index].image),
                ),
                name: controller.characters[index].name,
              ),
            );
          })),
    );
  }
}
