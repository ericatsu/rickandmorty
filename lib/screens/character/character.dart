import 'package:flutter/cupertino.dart';
import 'package:rickandmorty/shared/exports.dart';

class CharacterPage extends StatelessWidget {
  CharacterPage({super.key});

  final controller = Get.put(CharacterController());

  @override
  Widget build(BuildContext context) {
    final character = controller.character;
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            height: height * 0.55,
            width: width * 0.75,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(character.image), fit: BoxFit.contain),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(
                      CupertinoIcons.back,
                      color: Colors.red,
                      size: 24,
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
                SizedBox(
                  height: height * 0.40,
                ),
                Column(
                  children:  [
                    Image(image: NetworkImage(character.image)),
                    Text(character.species),
                    Text(character.status),
                    ListView.builder(
                      itemCount: character.episode.length,
                      itemBuilder: (context, index){
                        return Column(
                          children: [
                            Text('Episone Number:${character.episode[index].episode}'),
                            Text('Episone Name:${character.episode[index].name}'),
                          ],
                        );
                    })
                  ],
                ),
                // CharacterBox(
                //   name: character.name,
                //   status: character.status,
                //   species: character.species,
                //   gender: character.gender, 
                // ),
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
          ),
    );
  }
}
