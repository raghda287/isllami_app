import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier{
  ThemeMode currentMode=ThemeMode.light;

  String appLanguage='en';

  void changeLanguage(String newLanguage){
    appLanguage=newLanguage;
    notifyListeners();
}


  void changeTheme(ThemeMode newMode){
    currentMode=newMode;
    notifyListeners();
  }
  String getMainBackground(){
    return currentMode==ThemeMode.light
    ? 'assets/images/main_background.png'
        :  'assets/images/dark_bg.png';

  }
   bool isDarkMode(){
    return currentMode==ThemeMode.dark;

  }
  bool isEnglish(){
    return appLanguage=='en';

  }
}