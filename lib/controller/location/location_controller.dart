import 'package:get/get.dart';

import '../../model/location.dart';
import 'locations_controller.dart';

class LocationController extends GetxController {
  late int _index;
  late Location location;
  final __locationscontroller = Get.find<LocationsController>();

  @override
  void onInit() {
    _index = Get.arguments['index'];
    location = __locationscontroller.locations[_index];
    super.onInit();
  }
}
