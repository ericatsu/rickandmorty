import 'package:fluttergraphql/shared/exports.dart';

class EpisodePage extends StatelessWidget {
  EpisodePage({super.key});

final controller = Get.put(EpisodeController());

  @override
  Widget build(BuildContext context) {
    final episode = controller.episode;
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.episode.name),
      ),
      body: Column(
        children: [
          Text(episode.name),
          Text(episode.episode),
          Text(episode.air_date),
        ],
      ),
    );
  }
}