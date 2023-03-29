import 'package:fluttergraphql/shared/exports.dart';

class LocationsPage extends StatelessWidget {
  LocationsPage({super.key});
  final controller = Get.put(LocationsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //The Body of the Home Page
      body: Stack(
        children: [
          Column(
            children: [
              const LocationAppBar(),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Obx(
                    () => ListView.builder(
                        controller: controller.scrollController,
                        itemCount: controller.locations.length,
                        itemBuilder: (context, index) {
                          if (controller.isLoading.isTrue) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed('/location',
                                  arguments: {'index': index});
                            },
                            child: LocationCard(
                              name: controller.locations[index].name.toString(),
                              type: controller.locations[index].type.toString(),
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
