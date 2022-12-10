import 'package:flutter/material.dart';
import 'package:islami_app/quran/sura_details.dart';
import 'package:islami_app/quran/sura_details_screen.dart';

class SuraNameWidget extends StatelessWidget {

String title;
int index;
SuraNameWidget(this.title,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        Navigator.pushNamed(
          context,SuraDetailsScreen.routeName,
          arguments:SuraDetails(title, index),
            );
        
      },
      child: Container(
        child: Center(
          child: Text(
            title
            ,style: Theme.of(context).textTheme.headline2,
          ),
        ),
      ),
    );
  }
}
