import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_preload_videos/application/preload/preload_bloc.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  void initState() {
    BlocProvider.of<PreloadBloc>(context).add(const PreloadEvent.initialize());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<PreloadBloc, PreloadState>(
        builder: (context, state) {
          return PageView.builder(
            itemCount: state.urls.length,
            scrollDirection: Axis.vertical,
            onPageChanged: (index) => BlocProvider.of<PreloadBloc>(context)
                .add(PreloadEvent.onVideoIndexChanged(index)),
            itemBuilder: (context, index) {
              return state.focusedIndex == index &&
                      state.controllers[index] != null
                  ? VideoPlayer(state.controllers[index]!)
                  : const SizedBox();
            },
          );
        },
      ),
    );
  }
}
