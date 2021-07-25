import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_preload_videos/presentation/pages/video_page.dart';

import 'application/preload/preload_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PreloadBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: VideoPage(),
      ),
    );
  }
}
