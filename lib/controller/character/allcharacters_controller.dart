import 'package:rickAndmorty/shared/exports.dart';

import '../../model/character.dart';
import '../../services/character_service.dart';

class AllCharactersController extends GetxController {
  final page = 0.obs;
  final isLoading = false.obs;
  final hasException = false.obs;

  final _service = CharacterServices();

  final characters = <Character>[].obs;

  final ScrollController scrollController = ScrollController();

  

  @override
  void onInit() {
    fetchCharacters(page.value);
    scrollController.addListener(() {
      if (scrollController.offset >=
          scrollController.position.maxScrollExtent) {
        page.value++;
        fetchCharacters(page.value);
      }
    });
    super.onInit();
  }

  void fetchCharacters(int page) async {
    isLoading.value = true;
    final result = await _service.getResult(page);

    if (result.hasException) {
      hasException.value = true;
      isLoading.value = false;
      print(result.exception);
      AlertDialog(
        content: Text(result.hasException.toString()),
      );
    }

    if (result.isNotLoading) {
      isLoading.value = false;
    }
    if (hasException.isFalse && isLoading.isFalse) {
      final List<dynamic> listResult = result.data!['characters']['results'];
      for (var element in listResult) {
        characters.add(Character.fromJson(element));
      }
    }
  }
}

