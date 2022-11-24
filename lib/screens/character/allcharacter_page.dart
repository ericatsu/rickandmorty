import 'package:flutter/material.dart';
import 'package:fluttergraphql/widgets/character_appbar.dart';
import 'package:fluttergraphql/widgets/character_card.dart';
import 'package:fluttergraphql/widgets/drawer_wigdet.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/character/allcharacters_controller.dart';

class CharactersPage extends StatelessWidget {
  CharactersPage({super.key});
  final controller = Get.put(AllCharactersController());

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
        drawer: const DrawerWidget(),
        body: Stack(
          children: [
            Column(
              children: [
                const CharacterAppBar(),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Main Characters',
                      style: GoogleFonts.firaSans(
                        textStyle: const TextStyle(
                          color: Colors.blue,
                          fontSize: 26,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Obx(
                      () => GridView.builder(
                          controller: controller.scrollController,
                          itemCount: controller.characters.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) {
                            if (controller.isLoading.isTrue) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            return GestureDetector(
                              onTap: () {
                                Get.toNamed('/character_page',
                                    arguments: {'index': index});
                              },
                              child: CharacterCard(
                                img: Image(
                                  image: NetworkImage(
                                      controller.characters[index].image),
                                      alignment: Alignment.center,
                                  height: height * 0.14,
                                  // width: width * 0.2,
                                  fit: BoxFit.fill,
                                ),
                                name: controller.characters[index].name,
                                species: controller.characters[index].species,
                                status: controller.characters[index].status,
                              ),
                            );
                          }),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
