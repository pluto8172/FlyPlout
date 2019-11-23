import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CollectionState> buildReducer() {
  return asReducer(
    <Object, Reducer<CollectionState>>{
      CollectionAction.action: _onAction,
    },
  );
}

CollectionState _onAction(CollectionState state, Action action) {
  final CollectionState newState = state.clone();
  return newState;
}
