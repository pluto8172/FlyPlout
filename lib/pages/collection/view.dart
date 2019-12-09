import 'package:fish_redux/fish_redux.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


import 'action.dart';
import 'state.dart';

Widget buildView(CollectionState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text("我的收藏"),
    ),
    body: Container(
      child: Center(
        child: RaisedButton(
          padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: Text(
            "视频列表",
            style: TextStyle(color: Colors.white),
          ),

          onPressed: (){
            // 点击事件
            //dispatch(CollectionActionCreator.onOpenVideoListAction());

            var url = "http://httpbin.org/";
            http.get(url).then((response) {
              println("状态 ${response.statusCode}");

              println("正文： ${response.body}");

            });
          },
        ),
      ),
    ),
  );
}
