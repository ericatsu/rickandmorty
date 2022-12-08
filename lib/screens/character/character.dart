import 'package:flutter/material.dart';
import 'package:fluttergraphql/widgets/character/character_box.dart';
import 'package:get/get.dart';

import '../../controller/character/character_controller.dart';

class CharacterPage extends StatelessWidget {
  CharacterPage({super.key});

  final controller = Get.put(CharacterController());

  @override
  Widget build(BuildContext context) {
    final character = controller.character;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
              size: 20,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: Stack(
          children: [
            Container(
              height: height * 0.40,
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     image: NetworkImage(character.image),
              //   ),
              // ),
            ),
            SafeArea(
              child: Column(
                children: [
                  SizedBox(
                   height: height * 0.40,
                   width: double.infinity,
                   child: Image.network(character.image),
                  ),
                  CharacterBox(
                    name: character.name,
                    status: character.status,
                    species: character.species,
                    gender: character.gender,
                  ),
                ],
              ),
            )
          ],
        )
        // Column(
        //   children:  [
        //     Image(image: NetworkImage(character.image)),
        //     Text(character.species),
        //     Text(character.status),
        //     // ListView.builder(
        //     //   itemCount: character.episode.length,
        //     //   itemBuilder: (context, index){
        //     //     return Column(
        //     //       children: [
        //     //         Text('Episone Number:${character.episode[index].episode}'),
        //     //         Text('Episone Name:${character.episode[index].name}'),
        //     //       ],
        //     //     );
        //     // })
        //   ],
        // ),
        );
  }
}
