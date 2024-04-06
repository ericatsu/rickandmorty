import 'package:rickandmorty/shared/exports.dart';

class LocationPage extends StatelessWidget {
   LocationPage({super.key});

  final controller = Get.put(LocationController());

  @override
  Widget build(BuildContext context) {
    final location = controller.location;
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.location.name.toString()),
      ),
      body: Column(
        children: [
          Text(location.name.toString()),
          Text(location.dimension.toString())
        ],
      ),
    );
  }
}