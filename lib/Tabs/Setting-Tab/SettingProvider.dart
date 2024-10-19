import 'package:flutter/material.dart';

class SettingProvider with ChangeNotifier{

ThemeMode themeMode = ThemeMode.light  ;
String Languagecode ='ar';

void changeTheme (ThemeMode SelectedMode){
  themeMode = SelectedMode ;
  notifyListeners();
}

void changeLang (String SelectedLang){
  Languagecode = SelectedLang ;
  notifyListeners();
}
}