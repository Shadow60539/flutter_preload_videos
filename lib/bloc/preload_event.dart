part of 'preload_bloc.dart';

@freezed
class PreloadEvent with _$PreloadEvent {
  // const factory PreloadEvent.initialize() = _Initialize;
  const factory PreloadEvent.getVideosFromApi() = _GetVideosFromApi;
  const factory PreloadEvent.setLoading() = _SetLoading;
  const factory PreloadEvent.updateUrls(List<String> urls) = _UpdateUrls;
  const factory PreloadEvent.onVideoIndexChanged(int index) =
      _OnVideoIndexChanged;
}
