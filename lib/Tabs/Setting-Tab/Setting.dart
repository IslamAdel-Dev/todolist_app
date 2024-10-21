import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/AppTheme.dart';
import 'package:todolist_app/Tabs/Setting-Tab/Language.dart';
import 'package:todolist_app/Tabs/Setting-Tab/SettingProvider.dart';
import 'package:todolist_app/Tabs/Setting-Tab/ThemeMode.dart';

class SettingTab extends StatefulWidget {
  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  List<Language> languages = [
    Language(Languagename: 'عربي', LanguageCode: 'ar'),
    Language(Languagename: 'ُEnglish', LanguageCode: 'en'),
  ];
  List<CurrentThemeMode>currentThemeMode = [
    CurrentThemeMode(currentTheme: ThemeMode.light,modename: 'Light'),
    CurrentThemeMode(currentTheme: ThemeMode.dark,modename: 'Dark'),
  ];

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
          width: double.infinity,
          height: height * 0.18,
          color: AppTheme.blue,
          child: SafeArea(
            child: Text(
              'Setting',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: AppTheme.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30 , top:30),
          child: Text(
            'Language',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        DropdownButtonFormField<Language>(
          decoration: InputDecoration(fillColor: AppTheme.white, filled: true),
          isExpanded: true,
          padding: EdgeInsetsDirectional.symmetric(horizontal: 35,vertical: 20),
          value: languages.firstWhere((Language) =>
          Language.LanguageCode == settingProvider.Languagecode),
          onChanged: (SelectedLanguage) {
            if (SelectedLanguage != null) {
              settingProvider.Languagecode = SelectedLanguage.LanguageCode;
              setState(() {});
            }
          },
          items: languages
              .map((Language) => DropdownMenuItem(
            child: Text(Language.Languagename),
            value: Language,
          ))
              .toList(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30 , top:30),
          child: Text(
            'Mode',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        DropdownButtonFormField<CurrentThemeMode>(
          decoration: InputDecoration(fillColor: AppTheme.white, filled: true),
          isExpanded: true,
          padding: EdgeInsetsDirectional.symmetric(horizontal: 35,vertical: 20),
          value: currentThemeMode.firstWhere((mode) =>
              mode.currentTheme == settingProvider.themeMode),
          onChanged: (SelectedTheme) {
            if (SelectedTheme != null) {
              print(SelectedTheme.currentTheme);
              settingProvider.changeTheme(SelectedTheme.currentTheme);
              setState(() {});
              print('object');
            }
          },
          items: currentThemeMode
              .map((mode) => DropdownMenuItem(
                    child: Text(mode.modename),
                    value: mode,
                  ))
              .toList(),
        ),
      ],
    );
  }
}
