import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/AppTheme.dart';
import 'package:todolist_app/Tabs/Setting-Tab/Language.dart';
import 'package:todolist_app/Tabs/Setting-Tab/SettingProvider.dart';



class SettingTab extends StatefulWidget {
  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  List<Language> languages = [
    Language(Languagename: 'عربي', LanguageCode: 'ar'),
    Language(Languagename: 'ُEnglish', LanguageCode: 'en'),
  ];

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Column(
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
        Text('Language'),
        DropdownButton<Language>(isExpanded: true,padding: EdgeInsets.all(20),
          value: languages.firstWhere((Language) => Language.LanguageCode == settingProvider.Languagecode),
          onChanged: (SelectedLanguage) {
            if(SelectedLanguage != null){
              settingProvider.Languagecode = SelectedLanguage.LanguageCode;
              setState(() {});
            }
          },
          items: languages.map(
            (Language) => DropdownMenuItem(
              child: Text(Language.Languagename),
              value: Language,
            )).toList(),
          ),
      ],
    );
  }
}
