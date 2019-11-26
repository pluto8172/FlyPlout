import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fly_plout/module/login/model/user.dart';
import 'action.dart';
import 'state.dart';

Effect<LoginState> buildEffect() {
  return combineEffects(<Object, Effect<LoginState>>{
    Lifecycle.initState: _init,
    LoginAction.action: _onAction,

  });
}

void _init(Action action, Context<LoginState> ctx) {

}

void _onAction(Action action, Context<LoginState> ctx) {
}
