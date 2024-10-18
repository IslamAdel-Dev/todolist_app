import 'package:flutter/material.dart';
import 'package:todolist_app/AppTheme.dart';
import 'package:todolist_app/Tabs/Setting%20Tab/Setting.dart';
import 'package:todolist_app/Tabs/TaskTab/tasktab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    TaskTab(),
    SettingTab(),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        clipBehavior: Clip.antiAlias,
        child: Icon(Icons.add, color: AppTheme.white),
        onPressed: () {},
      ),
      body: tabs[index],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BottomAppBar(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          notchMargin: 9,
          height: 70,
          child: BottomNavigationBar(
            currentIndex: index,
            onTap: (Index) => setState(() {
              index = Index;
            }),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                  size: 35,
                ),
                label: 'Setting',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings, size: 35),
                label: 'Setting',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
