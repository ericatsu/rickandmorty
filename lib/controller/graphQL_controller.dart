import 'dart:convert';

import 'package:fluttergraphql/model/data_model.dart';
import 'package:get/get.dart';
import '../services/http_service.dart';

class GraphQLController extends GetxController {
  final page = 0.obs;
  final isLoading = false.obs;
  //RxList characterList = <Character>[].obs;
  RxList locationList = <Location>[].obs;
  //RxList episodeList = <Episode>[].obs;

  // void getCharacters() async{
  //   try {
  //     isLoading(true);

  //     dynamic response = HttpService.getCharacters;
  //     if (response.statusCode == 200) {
  //       List<Character> body = jsonDecode(response.body);
  //       List<Character> characters = body.map(
  //         (dynamic item) => Character.fromJSON(item),
  //       ).toList();

  //       characterList(characters);

  //       isLoading(false);
  //     }
  //   } catch (err) {
  //     print("Error");
  //     isLoading(false);
  //   }
  //   finally{
  //     isLoading(false);
  //   }
  // }

@override
  void onInit() {
    getLocation(page.value);
    super.onInit();
  }

  void getLocation(int page) async {
    try {
      isLoading(true);

      dynamic response = HttpService.getLocations;
      if (response.statusCode == 200) {
        List<Location> body = jsonDecode(response.body);
        List<Location> locations = body
            .map(
              (dynamic item) => Location.fromJSON(item),
            )
            .toList();

        locationList(locations);

        isLoading(false);
      }
    } catch (err) {
      isLoading(false);
    } finally {
      isLoading(false);
    }
  }

// void getEpisode() async {
//     try {
//       isLoading(true);

//       dynamic response = HttpService.getEpisode;
//       if (response.statusCode == 200) {
//         List<Episode> body = jsonDecode(response.body);
//         List<Episode> episodes= body
//             .map(
//               (dynamic item) => Episode.fromJSON(item),
//             )
//             .toList();

//         episodeList(episodes);

//         isLoading(false);
//       }
//     } catch (err) {
//       isLoading(false);
//     } finally {
//       isLoading(false);
//     }
//   }
}