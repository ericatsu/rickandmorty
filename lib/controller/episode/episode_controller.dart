import 'package:fluttergraphql/controller/episode/episodes_controller.dart';
import 'package:fluttergraphql/model/episode.dart';
import 'package:get/get.dart';

class LocationController extends GetxController {
  late int _index;
  late Episode episode;
  final __episodecontroller = Get.find<EpisodeController>();

  @override
  void onInit() {
    _index = Get.arguments['index'];
    episode = __episodecontroller.episode as Episode;
    super.onInit();
  }
}
