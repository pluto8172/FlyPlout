import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MemberPageState> buildReducer() {
  return asReducer(
    <Object, Reducer<MemberPageState>>{
      MemberPageAction.action: _onAction,
    },
  );
}

MemberPageState _onAction(MemberPageState state, Action action) {
  final MemberPageState newState = state.clone();
  return newState;
}
