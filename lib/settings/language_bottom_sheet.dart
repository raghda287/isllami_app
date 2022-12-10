
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../providers/settings_provider.dart';

class LanguageBottomSheet extends StatefulWidget {

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
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
settingsProvider.changeLanguage('ar');
                },
                child: settingsProvider.isEnglish()?getUnSelectedLanguage(AppLocalizations.of(context)!.arabic):getSelectedLanguage(AppLocalizations.of(context)!.arabic)),
            const SizedBox(height: 16,),
            InkWell(
                onTap: (){
                  settingsProvider.changeLanguage('en');
                },
                child: settingsProvider.isEnglish()?getSelectedLanguage(AppLocalizations.of(context)!.english):getUnSelectedLanguage(AppLocalizations.of(context)!.english)),
          ],
        ),
      ),
    );
  }

  Widget getSelectedLanguage(String text){
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
          style: Theme.of(context).textTheme.headline4?.copyWith(color: Theme.of(context).accentColor),),
        Icon(Icons.check,color: Theme.of(context).accentColor,),
      ],
    );
  }

  Widget getUnSelectedLanguage(String text){
    return Text(text,style: Theme.of(context).textTheme.headline4);

  }
}
