import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fly_plout/module/mine/bean/mine_response_bean_entity.dart';

class MineState implements Cloneable<MineState> {

  MineResponseBeanEntity mineResponseBeanEntity;

  @override
  MineState clone() {
    return MineState()
      ..mineResponseBeanEntity = mineResponseBeanEntity;
  }
}

MineState initState(Map<String, dynamic> args) {
  return MineState();
}
