import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CollectionPage extends Page<CollectionState, Map<String, dynamic>> {
  CollectionPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<CollectionState>(
                adapter: null,
                slots: <String, Dependent<CollectionState>>{
                }),
            middleware: <Middleware<CollectionState>>[
            ],);

}
