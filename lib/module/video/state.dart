import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fly_plout/module/video/video_model.dart';

class VideoState implements Cloneable<VideoState> {

  List<VideoModel> models;

  @override
  VideoState clone() {
    return VideoState()..models = models;
  }
}

VideoState initState(Map<String, dynamic> args) {
  return VideoState();
}
