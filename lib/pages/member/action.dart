import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MemberPageAction { action }

class MemberPageActionCreator {
  static Action onAction() {
    return const Action(MemberPageAction.action);
  }
}
