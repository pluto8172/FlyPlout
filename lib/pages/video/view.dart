import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(VideoState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: new AppBar(
      title: new Text("视频列表"),
    ),
    body: new GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 20.0,
      mainAxisSpacing: 20.0,
      childAspectRatio: 1/1,
      padding: EdgeInsets.all(20),
      children: new List.generate(state.models.length, (index){
        return Center(
          child: Card(
            color: Colors.lightBlueAccent,
            child: InkWell(
              splashColor: Colors.greenAccent,
              onTap: (){

              },

              child: Container(
                width: 200,
                height: 200,
                child: Center(
                  child: Text(state.models[index].name),
                ),
              ),
            ),
          )
        );
      },),
    ),
  );
}
