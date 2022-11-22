// import 'package:get/get.dart';

// import '../model/episode.dart';

// class EpisodeProvider extends GetConnect {
//   @override
//   void onInit() {
//     httpClient.defaultDecoder = (map) => Episode.fromJson(map);
//     httpClient.baseUrl = 'https://rickandmortyapi.com/graphql';
//   }

//   Future<Response<List<Episode>>> getEpisodePage({
//     required int pageNumber,
//   }) async =>
//       await get(
//         'episode/',
//         query: {
//           'page': '$pageNumber',
//         },
//         decoder: (list) =>
//             list['results'].map<Episode>((e) => Episode.fromJson(e)).toList(),
//       );

//   Future<Response<Episode>> getEpisode(int id) async =>
//       await get('episode/$id');
//   Future<Response<Episode>> postEpisode(Episode episode) async =>
//       await post('episode', episode);
//   Future<Response> deleteEpisode(int id) async => await delete('episode/$id');
// }
