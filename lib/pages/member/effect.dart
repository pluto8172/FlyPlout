import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<MemberPageState> buildEffect() {
  return combineEffects(<Object, Effect<MemberPageState>>{
    MemberPageAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MemberPageState> ctx) {
}
