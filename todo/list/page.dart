import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';
import 'adapter/adapter.dart';
import 'report_component/component.dart';

class ToDoListPage extends Page<PageState, Map<String, dynamic>> {
  ToDoListPage()
      : super (
    initState: initState,
    effect: buildEffect(),
    reducer: buildReducer(),
    view: buildView,
    dependencies: Dependencies<PageState>(
      adapter: ToDoListAdapter(),
      slots: <String, Dependent<PageState>>{
        'report' : ReportConnector() + ReportComponent()
      }
    ),
    middleware: <Middleware<PageState>>[
      logMiddleware(tag: 'ToDoListPage'),
    ],
  );
}