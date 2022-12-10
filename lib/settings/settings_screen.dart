import 'package:flutter/material.dart';
import 'package:islami_app/settings/language_bottom_sheet.dart';
import 'package:islami_app/settings/theme_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SettingsScreen extends StatefulWidget {

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(AppLocalizations.of(context)!.theme,style: Theme.of(context).textTheme.subtitle2,),
            SizedBox(height: 8,),
            InkWell(
              onTap: (){
                bottomSheetTheme();
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border:Border.all(color:Theme.of(context).accentColor, )),
              child:Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(AppLocalizations.of(context)!.light,style: Theme.of(context).textTheme.headline4,),
              ),
              ),
            ),
            SizedBox(height: 24,),

            Text(AppLocalizations.of(context)!.language,style: Theme.of(context).textTheme.subtitle2,),
            SizedBox(height: 8,),
            InkWell(
              onTap: (){
                showLanguageBottomSheet();

              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border:Border.all(color:Theme.of(context).accentColor, )),
                child:Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(AppLocalizations.of(context)!.english,style: Theme.of(context).textTheme.headline4,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void bottomSheetTheme(){
    showModalBottomSheet(context: context, builder: (BuildContext){
      return ThemeBottomSheet();
    });
  }
  void showLanguageBottomSheet(){
    showModalBottomSheet(context: context, builder: (BuildContext){
      return LanguageBottomSheet();
    });
  }
}
