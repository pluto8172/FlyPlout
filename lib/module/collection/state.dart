import 'package:fish_redux/fish_redux.dart';

class CollectionState implements Cloneable<CollectionState> {

  @override
  CollectionState clone() {
    return CollectionState();
  }
}

CollectionState initState(Map<String, dynamic> args) {
  return CollectionState();
}
