import 'package:fish_redux/fish_redux.dart';//TODO replace with your own actionenum MainAction { action,  tabChanged}class MainActionCreator {  static Action onAction() {    return const Action(MainAction.action);  }  /*   * 切换底部导航栏   */  static Action onTabChanged(int index){    return Action(MainAction.tabChanged, payload: index);  }}