import 'package:flutter/material.dart';
import 'package:fluttergraphql/widgets/circle_button.dart';
import 'package:fluttergraphql/widgets/character/drawer_wigdet.dart';
import 'package:get/get.dart';

import '../../controller/character/allcharacters_controller.dart';
import '../../widgets/character/character_appbar.dart';
import '../../widgets/character/character_card.dart';
import '../../widgets/character/menu.dart';

class CharactersPage extends StatelessWidget {
  CharactersPage({super.key});
  final controller = Get.put(AllCharactersController());

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
        drawer: const DrawerWidget(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: Menu(),
              actions: [
                CircleButton(icon: Icons.search, onPressed: (){})
              ],
              backgroundColor: Colors.white,
              floating: false,
              pinned: true,
              expandedHeight: 340,
              flexibleSpace: const CharacterAppBar(),
            ),
            SliverToBoxAdapter(
              child: Obx(
                () => GridView.builder(
                    controller: controller.scrollController,
                    itemCount: controller.characters.length,
                    primary: false,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      if (controller.isLoading.isTrue) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
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
                        ),
                      );
                    }),
              ),
            ),
        ]));
  }
}
