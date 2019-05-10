import 'package:flutter/material.dart';
import 'package:fish_redux/fish_redux.dart';

import 'edit/page.dart';
import 'list/page.dart';

Widget createApp() {
  final AbstractRoutes routes = HybridRoutes(routes: <AbstractRoutes>[
      PageRoutes(
        pages: <String, Page<Object, dynamic>>{
          'todo_list': ToDoListPage(),
          'todo_edit': TodoEditPage(),
        },
      ),
    ]);

  return MaterialApp(
    title: 'Fluro',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.blue,
    ),
    home: routes.buildPage('todo_list', null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}