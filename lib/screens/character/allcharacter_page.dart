import 'package:flutter/material.dart';
import 'package:fluttergraphql/widgets/circle_button.dart';
import 'package:fluttergraphql/widgets/character/drawer_wigdet.dart';
import 'package:get/get.dart';

import '../../controller/character/allcharacters_controller.dart';
// import '../../widgets/character/character_appbar.dart';
import '../../widgets/character/character_appbar.dart';
import '../../widgets/character/character_card.dart';
import '../../widgets/character/menu.dart';

class CharactersPage extends StatelessWidget {
  CharactersPage({super.key});
  final controller = Get.put(AllCharactersController());

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            leading: const Menu(),
            actions: [CircleButton(icon: Icons.search, onPressed: () {})],
            backgroundColor: Colors.white,
            floating: true,
            expandedHeight: height * 0.35,
            flexibleSpace: const CharacterAppBar(),
            //forceElevated: innerBoxIsScrolled,
            // appBar: AppBar(
            //   backgroundColor: Colors.white,
            //   elevation: 0,
            //   leading: const Menu(),
            //   actions: [CircleButton(icon: Icons.search, onPressed: () {})],
            // ),
          ),
        ];
      },
      body: Obx(
        () => GridView.builder(
            controller: controller.scrollController,
            itemCount: controller.characters.length,
            primary: false,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 20, crossAxisCount: 2),
            itemBuilder: (context, index) {
              if (controller.isLoading.isTrue) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed('/character_page', arguments: {'index': index});
                  },
                  child: CharacterCard(
                    img: Image(
                      image: NetworkImage(controller.characters[index].image),
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
      
    );
  }
}
