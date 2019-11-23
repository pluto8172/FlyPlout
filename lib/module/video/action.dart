import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum VideoAction { action, loadDataAction }

class VideoActionCreator {
  static Action onAction() {
    return const Action(VideoAction.action);
  }

  static Action onLoadDataAction() {
    return const Action(VideoAction.loadDataAction);
  }
}
