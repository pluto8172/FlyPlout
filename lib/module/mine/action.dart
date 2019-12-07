import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MineAction { action , openCollection, openLogin, onLoadMineData}

class MineActionCreator {
  static Action onAction() {
    return const Action(MineAction.action);
  }

  static Action onOpenCollectionAction() {
    return const Action(MineAction.openCollection);
  }

  static Action onOpenLoginAction() {
    return const Action(MineAction.openLogin);
  }

  static Action onLoadDataAction() {
    println("加载数据");
    return const Action(MineAction.onLoadMineData);
  }
}
