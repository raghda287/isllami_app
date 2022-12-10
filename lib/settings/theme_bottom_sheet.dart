
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/settings_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatefulWidget {

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          InkWell(
            onTap: (){
              settingsProvider.changeTheme(ThemeMode.light);
            },
              child: settingsProvider.isDarkMode()?getUnSelectedItem(AppLocalizations.of(context)!.light):getSelectedItem(AppLocalizations.of(context)!.light)),
            const SizedBox(height: 16,),
            InkWell(
              onTap: (){
                settingsProvider.changeTheme(ThemeMode.dark);
              },
                child: settingsProvider.isDarkMode()?getSelectedItem(AppLocalizations.of(context)!.dark):getUnSelectedItem(AppLocalizations.of(context)!.dark)),
          ],
        ),
      ),
    );
  }

  Widget getSelectedItem(String title){
return   Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(title,
      style: Theme.of(context).textTheme.headline4?.copyWith(color: Theme.of(context).accentColor),),
    Icon(Icons.check,color: Theme.of(context).accentColor,),
  ],
);
  }

  Widget getUnSelectedItem(String title){
return Text(title,style: Theme.of(context).textTheme.headline4);

  }
}
