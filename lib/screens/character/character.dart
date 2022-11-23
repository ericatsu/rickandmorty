import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/character/character_controller.dart';

class CharacterPage extends StatelessWidget {
  CharacterPage({super.key});

  final controller = Get.put(CharacterController());

  @override
  Widget build(BuildContext context) {
    final character = controller.character;
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.character.name),
      ),
      body: Column(
        children:  [
          Image(image: NetworkImage(character.image)),
          Text(character.species),
          Text(character.status),
          // ListView.builder(
          //   itemCount: character.episode.length,
          //   itemBuilder: (context, index){
          //     return Column(
          //       children: [
          //         Text('Episone Number:${character.episode[index].episode}'),
          //         Text('Episone Name:${character.episode[index].name}'),
          //       ],
          //     );
          // })
        ],
      ),
    );
  }
}