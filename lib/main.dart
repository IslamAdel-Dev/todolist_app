import 'package:flutter/material.dart';
import 'package:todolist_app/AppTheme.dart';
import 'package:todolist_app/HomeScreen.dart';

void main() {
  runApp(TodoList());
}

class TodoList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName :(_) => HomeScreen(),
      },
      themeMode: ThemeMode.light,
      darkTheme: AppTheme.lightMode,
      theme: AppTheme.lightMode,
    );
  }
}



