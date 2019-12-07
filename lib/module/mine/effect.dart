import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<MineState> buildEffect() {
  return combineEffects(<Object, Effect<MineState>>{
    Lifecycle.initState: _init,
    MineAction.action: _onAction,
    MineAction.openCollection: _onOpenCollectionAction,
    MineAction.openLogin: _onOpenLoginAction,
  });
}

void _init(Action action, Context<MineState> ctx) {
  println("初始化Mine");
  ctx.dispatch(MineActionCreator.onLoadDataAction());
}

void _onAction(Action action, Context<MineState> ctx) {
}

void _onOpenCollectionAction(Action action, Context<MineState> ctx) {
  Navigator.of(ctx.context).pushNamed("collection_page", arguments:null);
}

void _onOpenLoginAction(Action action, Context<MineState> ctx) {
  Navigator.of(ctx.context).pushNamed("login_page", arguments:null);
}
