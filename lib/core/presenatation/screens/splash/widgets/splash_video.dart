import 'dart:async';

import 'package:five_flutter_auth_app/core/presenatation/screens/errors/video_ops_error/video_ops_error_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

/// A widget that displays a splash video.
class SplashVideo extends StatefulWidget {
  /// The source of the video to be displayed.
  final String videoSource;

  /// Creates a new [SplashVideo] widget.
  const SplashVideo({super.key, required this.videoSource});

  @override
  State<SplashVideo> createState() => _SplashVideoState();
}

class _SplashVideoState extends State<SplashVideo> {
  late VideoPlayerController _videoPlayerController;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Initialize the video player controller with the given video source.
    _videoPlayerController = VideoPlayerController.asset(widget.videoSource);

    // Seek to 5 seconds into the video.
    _videoPlayerController.seekTo(const Duration(seconds: 5));

    // Initialize the video player and start playing it.
    _initializeVideoPlayerFuture =
        _videoPlayerController.initialize().then((_) {
      Timer(const Duration(seconds: 5), () {
        Get.offNamed('/signin');
      });
      _videoPlayerController.play();
    });
  }

  @override
  void dispose() {
    // Dispose of the video player controller when the widget is disposed.
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: Stack(
                children: <Widget>[
                  SizedBox.expand(
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: SizedBox(
                        width: _videoPlayerController.value.size.width,
                        height: _videoPlayerController.value.size.height,
                        child: VideoPlayer(_videoPlayerController),
                      ),
                    ),
                  ),
                  //FURTHER IMPLEMENTATION
                ],
              ),
            );
          } else {
            // If the video player is not yet initialized, display an error screen.
            return const VideoErrorOpsScreen();
          }
        });
  }
}
