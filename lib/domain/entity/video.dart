import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_player/video_player.dart';

part 'video.freezed.dart';

@freezed
abstract class Video with _$Video {
  const factory Video({
    required String url,
    required VideoPlayerController controller,
  }) = _Video;

  factory Video.fromUrl(String url) => Video(
        url: url,
        controller: VideoPlayerController.network(url),
      );
}
