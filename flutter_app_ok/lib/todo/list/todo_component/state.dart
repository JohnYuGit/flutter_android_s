import 'package:fish_redux/fish_redux.dart';

class ToDoState implements Cloneable<ToDoState> {
  String uniqueId;
  String title;
  String desc;
  bool isDone;

  ToDoState({this.uniqueId, this.title, this.desc, this.isDone = false}){
    uniqueId ??= DateTime.now().toIso8601String();
  }

  @override
  ToDoState clone() {
    // TODO: implement clone
    return ToDoState()
      ..uniqueId = uniqueId
      ..title = title
      ..desc = desc
      ..isDone = isDone;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'ToDoSatate{uniqueId: $uniqueId, title: $title, desc: $desc, isDone: $isDone}';
  }

}