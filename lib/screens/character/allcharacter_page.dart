import 'package:rickandmorty/shared/exports.dart';
import 'package:rickandmorty/widgets/character/shimmer_card.dart';

class CharactersPage extends StatelessWidget {
  CharactersPage({super.key, required this.user});
  final Map<String, dynamic> user;
  final controller = Get.put(AllCharactersController());

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: DrawerWidget(user: user),
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
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
            pinned: true,
            toolbarHeight: height * 0.02,
            flexibleSpace: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Characters',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Obx(
            () => SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              sliver: SliverGrid.builder(
                itemCount: controller.characters.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10, crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  if (controller.isLoading.isTrue) {
                    return const ShimmerCharacterCard();
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/character_page',
                            arguments: {'index': index});
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: CharacterCard(
                          img: Image(
                            image:
                                NetworkImage(controller.characters[index].image),
                            alignment: Alignment.center,
                            fit: BoxFit.fill,
                          ),
                          name: controller.characters[index].name,
                          species: controller.characters[index].species,
                          status: controller.characters[index].status,
                        ),
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
