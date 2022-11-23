import 'package:get/get.dart';

import '../../model/location.dart';

class LocationController extends GetxController {
  late int _index;
  late Location location;
  final __locationcontroller = Get.find<LocationController>();

  @override
  void onInit() {
    _index = Get.arguments['index'];
    location = __locationcontroller.location;
    super.onInit();
  }
}
