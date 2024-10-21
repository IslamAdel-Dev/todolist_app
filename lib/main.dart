import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/AppTheme.dart';
import 'package:todolist_app/HomeScreen.dart';
import 'package:todolist_app/Tabs/Setting-Tab/SettingProvider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => SettingProvider(),
      child: TodoList(),
    ),
  );
}

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
      },
      themeMode: settingProvider.themeMode,
      darkTheme: AppTheme.darkmode,
      theme: AppTheme.lightMode,
    );
  }
}
