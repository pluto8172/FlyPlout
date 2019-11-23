import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<MineState> buildEffect() {
  return combineEffects(<Object, Effect<MineState>>{
    MineAction.action: _onAction,
    MineAction.openCollection: _onAction,
  });
}

void _onAction(Action action, Context<MineState> ctx) {
}

void _onOpenCollectionAction(Action action, Context<MineState> ctx) {
  Navigator.of(ctx.context).pushNamed("video_page", arguments:null);
}
