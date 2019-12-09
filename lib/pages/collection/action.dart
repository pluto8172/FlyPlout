import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CollectionAction { action, openVideoList }

class CollectionActionCreator {
  static Action onAction() {
    return const Action(CollectionAction.action);
  }

  static Action onOpenVideoListAction() {
    return const Action(CollectionAction.openVideoList);
  }
}
