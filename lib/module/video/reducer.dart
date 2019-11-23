import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fly_plout/module/video/video_model.dart';


import 'action.dart';
import 'state.dart';

Reducer<VideoState> buildReducer() {
  return asReducer(
    <Object, Reducer<VideoState>>{
      VideoAction.action: _onAction,
      VideoAction.loadDataAction: _onLoadDataAction,
    },
  );
}

VideoState _onAction(VideoState state, Action action) {
  final VideoState newState = state.clone();
  return newState;
}

VideoState _onLoadDataAction(VideoState state, Action action){
  final VideoState newState = state.clone()..models =getVideoData();
  return newState;
}

List<VideoModel> getVideoData(){
  return [
    VideoModel(name: "第一块"),
    VideoModel(name: "第一块"),
    VideoModel(name: "第一块"),
    VideoModel(name: "第一块"),
    VideoModel(name: "第一块"),
    VideoModel(name: "第一块"),
    VideoModel(name: "第一块"),
    VideoModel(name: "第一块"),
    VideoModel(name: "第一块"),
    VideoModel(name: "第一块"),
    VideoModel(name: "第一块"),
    VideoModel(name: "第一块"),
    VideoModel(name: "第一块"),
  ];
}
