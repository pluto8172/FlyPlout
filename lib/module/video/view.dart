import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(VideoState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: new AppBar(
      title: new Text("视频列表"),
    ),
    body: Text("Video 列表页面"),
  );
}
