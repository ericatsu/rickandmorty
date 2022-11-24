import 'package:fluttergraphql/controller/episode/episodes_controller.dart';
import 'package:fluttergraphql/model/episode.dart';
import 'package:get/get.dart';

class EpisodeController extends GetxController {
  late int _index;
  late Episode episode;
  final __episodescontroller = Get.find<EpisodesController>();

  @override
  void onInit() {
    _index = Get.arguments['index'];
    episode = __episodescontroller.episodes[_index];
    super.onInit();
  }
}
