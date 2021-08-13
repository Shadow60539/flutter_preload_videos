import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:video_player/video_player.dart';

class PreloadProvider extends ChangeNotifier {
  final List<String> _urls = const [
    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4#1',
    'https://assets.mixkit.co/videos/preview/mixkit-young-mother-with-her-little-daughter-decorating-a-christmas-tree-39745-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-girl-in-neon-sign-1232-large.mp4',
  ];
  List<String> get urls => _urls;

  final Map<int, VideoPlayerController> _controllers = {};
  Map<int, VideoPlayerController> get controllers => _controllers;

  int _focusedIndex = 0;
  int get focusedIndex => _focusedIndex;

  Future _initializeControllerAtIndex(int index) async {
    if (_urls.length > index && index >= 0) {
      /// Create new controller
      final VideoPlayerController _controller =
          VideoPlayerController.network(_urls[index]);

      /// Add to [controllers] list
      _controllers[index] = _controller;

      /// Initialize
      await _controller.initialize();

      log('🚀🚀🚀 INITIALIZED $index');
    }
  }

  void _playControllerAtIndex(int index) {
    if (_urls.length > index && index >= 0) {
      /// Get controller at [index]
      final VideoPlayerController _controller = _controllers[index]!;

      /// Play controller
      _controller.play();

      log('🚀🚀🚀 PLAYING $index');
    }
  }

  void _stopControllerAtIndex(int index) {
    if (_urls.length > index && index >= 0) {
      /// Get controller at [index]
      final VideoPlayerController _controller = _controllers[index]!;

      /// Pause
      _controller.pause();

      /// Reset postiton to beginning
      _controller.seekTo(const Duration());

      log('🚀🚀🚀 STOPPED $index');
    }
  }

  void _disposeControllerAtIndex(int index) {
    if (_urls.length > index && index >= 0) {
      /// Get controller at [index]
      final VideoPlayerController _controller = _controllers[index]!;

      /// Dispose controller
      _controller.dispose();

      _controllers.remove(_controller);

      log('🚀🚀🚀 DISPOSED $index');
    }
  }

  void _playNext(int index) {
    /// Stop [index - 1] controller
    _stopControllerAtIndex(index - 1);

    /// Dispose [index - 2] controller
    _disposeControllerAtIndex(index - 2);

    /// Play current video (already initialized)
    _playControllerAtIndex(index);

    /// Initialize [index + 1] controller
    _initializeControllerAtIndex(index + 1);
  }

  void _playPrevious(int index) {
    /// Stop [index + 1] controller
    _stopControllerAtIndex(index + 1);

    /// Dispose [index + 2] controller
    _disposeControllerAtIndex(index + 2);

    /// Play current video (already initialized)
    _playControllerAtIndex(index);

    /// Initialize [index - 1] controller
    _initializeControllerAtIndex(index - 1);
  }

  Future<void> initialize() async {
    /// Initialize 1st video
    await _initializeControllerAtIndex(0);

    /// Play 1st video
    _playControllerAtIndex(0);

    /// Initialize 2nd vide
    await _initializeControllerAtIndex(1);
  }

  void onVideoIndexChanged(int index) {
    if (index > _focusedIndex) {
      _playNext(index);
    } else {
      _playPrevious(index);
    }
    _focusedIndex = index;
    notifyListeners();
  }
}
