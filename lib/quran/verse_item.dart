import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';

class VerseItem extends StatelessWidget {
  String text;
  int pos;
  VerseItem(this.text,this.pos);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
      child: Text(
      '  $text ($pos)',
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,

        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
