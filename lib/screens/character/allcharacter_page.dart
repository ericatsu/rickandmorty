import 'package:rickAndmorty/shared/exports.dart';

class CharactersPage extends StatelessWidget {
  CharactersPage({super.key});
  final controller = Get.put(AllCharactersController());

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: DrawerWidget(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: const Menu(),
            actions: [CircleButton(icon: Icons.search, onPressed: () {})],
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            expandedHeight: height * 0.36,
            pinned: true,
            elevation: 0,
            flexibleSpace: const CharacterAppBar(),
          ),
          Obx(
            () => SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              sliver: SliverGrid.builder(
                itemCount: controller.characters.length,
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
                        Get.toNamed('/character_page',
                            arguments: {'index': index});
                      },
                      child: CharacterCard(
                        img: Image(
                          image:
                              NetworkImage(controller.characters[index].image),
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
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
