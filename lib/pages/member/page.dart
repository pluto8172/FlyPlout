import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MemberPagePage extends Page<MemberPageState, Map<String, dynamic>> {
  MemberPagePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<MemberPageState>(
                adapter: null,
                slots: <String, Dependent<MemberPageState>>{
                }),
            middleware: <Middleware<MemberPageState>>[
            ],);

}
