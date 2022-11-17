import 'package:get/get.dart';
import '../../model/character.dart';
import 'allcharacters_controller.dart';

class CharacterController extends GetxController {
  late int _index;
  late Character character;
  final _allCharactersController = Get.find<AllCharactersController>();

  @override
  void onInit() {
    _index = Get.arguments['index'];
    character = _allCharactersController.characters[_index];
    super.onInit();
  }
}
