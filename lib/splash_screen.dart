import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
static const String routeName='splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();
    Timer(const Duration(seconds: 4),()=>Navigator.pushNamed(context, HomeScreen.routeName));
  }
  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingProvider>(context);
    return Scaffold(
      body: Container(
      child: Image.asset(
        settingsProvider.currentMode==ThemeMode.light?
          'assets/images/splash_screen.png'
            :'assets/images/splash_dark.png',fit: BoxFit.fill,),
      ),
    );
  }
}
