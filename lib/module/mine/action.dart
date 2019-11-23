import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MineAction { action , openCollection}

class MineActionCreator {
  static Action onAction() {
    return const Action(MineAction.action);
  }

  static Action onOpenCollectionAction() {
    return const Action(MineAction.openCollection);
  }
}
