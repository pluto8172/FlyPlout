import 'package:fish_redux/fish_redux.dart';

class MemberPageState implements Cloneable<MemberPageState> {

  @override
  MemberPageState clone() {
    return MemberPageState();
  }
}

MemberPageState initState(Map<String, dynamic> args) {
  return MemberPageState();
}
