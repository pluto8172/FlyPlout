import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<VideoState> buildEffect() {
  return combineEffects(<Object, Effect<VideoState>>{
    Lifecycle.initState:_init,
    VideoAction.action: _onAction,

  });
}

void _onAction(Action action, Context<VideoState> ctx) {
}

void _init(Action action, Context<VideoState> ctx) {
  ctx.dispatch(VideoActionCreator.onLoadDataAction());

}

