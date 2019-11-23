import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart' hide Action;

import 'action.dart';
import 'state.dart';

Effect<CollectionState> buildEffect() {
  return combineEffects(<Object, Effect<CollectionState>>{
    CollectionAction.action: _onAction,
    CollectionAction.openVideoList: _onOpenVideoList,
  });
}

void _onAction(Action action, Context<CollectionState> ctx) {
}

void _onOpenVideoList(Action action, Context<CollectionState> ctx){
  Navigator.of(ctx.context).pushNamed("video_page", arguments:null);
}
