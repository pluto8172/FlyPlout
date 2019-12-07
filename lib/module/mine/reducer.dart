import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fly_plout/http/HttpManager.dart';
import 'package:flutter_fly_plout/module/mine/bean/mine_response_bean_entity.dart';

import 'action.dart';
import 'state.dart';

Reducer<MineState> buildReducer() {
  return asReducer(
    <Object, Reducer<MineState>>{
     // MineAction.action: _onAction,
      MineAction.onLoadMineData: _onLoadMineData,
    },
  );
}

MineState _onAction(MineState state, Action action) {
  final MineState newState = state.clone();
  return newState;
}

MineState _onLoadMineData(MineState state, Action action)  {
  final MineState newState = state.clone()
    ..mineResponseBeanEntity =  getMineData();
  return newState;
}

MineResponseBeanEntity getMineData() {

  println("发起网络请求");
  MineResponseBeanEntity responseBeanEntity;
  FormData params = FormData.fromMap({'userId': '262170914450440193'});
  DioManager.getInstance().post('/v1/api/user/get', params,
          (data) {responseBeanEntity = MineResponseBeanEntity.fromJson(data);},
          //错误回调
          (error) {});

  return responseBeanEntity;
}
