import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_preload_videos/core/constants.dart';
import 'package:flutter_preload_videos/service/navigation_service.dart';
import 'package:flutter_preload_videos/video_page.dart';
import 'package:injectable/injectable.dart';

import 'service/api_service.dart';
import 'bloc/preload_bloc.dart';
import 'core/build_context.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(MyApp());
}

/// Isolate to fetch videos in the background so that the video experience is not disturbed.
/// Without isolate, the video will be paused whenever there is an API call
/// because the main thread will be busy fetching new video URLs. 
///
/// https://blog.codemagic.io/understanding-flutter-isolates/
Future createIsolate(int index) async {
  // Set loading to true
  BlocProvider.of<PreloadBloc>(context, listen: false)
      .add(PreloadEvent.setLoading());

  ReceivePort mainReceivePort = ReceivePort();

  Isolate.spawn<SendPort>(getVideosTask, mainReceivePort.sendPort);

  SendPort isolateSendPort = await mainReceivePort.first;

  ReceivePort isolateResponseReceivePort = ReceivePort();

  isolateSendPort.send([index, isolateResponseReceivePort.sendPort]);

  final isolateResponse = await isolateResponseReceivePort.first;
  final _urls = isolateResponse;

  // Update new urls
  BlocProvider.of<PreloadBloc>(context, listen: false)
      .add(PreloadEvent.updateUrls(_urls));
}

void getVideosTask(SendPort mySendPort) async {
  ReceivePort isolateReceivePort = ReceivePort();

  mySendPort.send(isolateReceivePort.sendPort);

  await for (var message in isolateReceivePort) {
    if (message is List) {
      final int index = message[0];

      final SendPort isolateResponseSendPort = message[1];

      final List<String> _urls =
          await ApiService.getVideos(id: index + kPreloadLimit);

      isolateResponseSendPort.send(_urls);
    }
  }
}

class MyApp extends StatelessWidget {
  final NavigationService _navigationService = getIt<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PreloadBloc>()..add(PreloadEvent.getVideosFromApi()),
      child: MaterialApp(
        key: _navigationService.navigationKey,
        debugShowCheckedModeBanner: false,
        home: VideoPage(),
      ),
    );
  }
}
