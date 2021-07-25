part of 'preload_bloc.dart';

@freezed
class PreloadState with _$PreloadState {
  const factory PreloadState({
    required List<String> urls,
    required Map<int, VideoPlayerController> controllers,
    required int focusedIndex,
  }) = _PreloadState;

  factory PreloadState.initial() => PreloadState(
        focusedIndex: 0,
        urls: const [
          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4#1',
          'https://assets.mixkit.co/videos/preview/mixkit-young-mother-with-her-little-daughter-decorating-a-christmas-tree-39745-large.mp4',
          'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
          'https://assets.mixkit.co/videos/preview/mixkit-girl-in-neon-sign-1232-large.mp4',
        ],
        controllers: {},
      );
}
