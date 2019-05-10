import 'package:fish_redux/fish_redux.dart';

import 'report_component/component.dart';
import 'todo_component/component.dart';

class PageState implements Cloneable<PageState> {
  List<ToDoState> toDos;

  @override
  PageState clone() {
    // TODO: implement clone
    return PageState()..toDos = toDos;
  }
}

PageState initState(Map<String, dynamic> args) {
  return PageState();
}

class ReportConnector extends ConnOp<PageState, ReportState> {

  @override
  ReportState get(PageState state) {
    final ReportState reportState = ReportState();
    reportState.total = state.toDos.length;
    reportState.done = state.toDos.where((ToDoState tds) => tds.isDone).toList().length;
    return reportState;
  }

  @override
  void set(PageState state, ReportState subState) {}

}