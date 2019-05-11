import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(
    ReportState state,
    Dispatch dispatch,
    ViewService service,
    ) {
  return Container(
    margin: const EdgeInsets.all(8.0),
    padding: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Row(
      children: <Widget>[
        Container(
          child: const Icon(Icons.report),
          margin: const EdgeInsets.only(right: 8.0),
        ),
        Text(
          'Total ${state.total} tasks, ${state.done} done',
          style: const TextStyle(fontSize: 18.0, color: Colors.white),
        )
      ],
    ),
  );
}