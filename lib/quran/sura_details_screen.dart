import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/quran/sura_details.dart';
import 'package:islami_app/quran/verse_item.dart';
import 'package:provider/provider.dart';


class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'SuraDetailsScreen';



  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingProvider>(context);
    var args =
    ModalRoute
        .of(context)
        ?.settings
        .arguments as SuraDetails;
    if (verses.isEmpty) {
      readFile(args.index);
    }
    return Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
        image: AssetImage( settingsProvider.getMainBackground(),
          ),
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              args.name,
              style: Theme
                  .of(context)
                  .textTheme
                  .headline2,
            ),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Card(
              color:Theme.of(context).cardColor,
              elevation: 10,
              margin:EdgeInsets.symmetric(vertical: 66,horizontal: 24),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child:
                  verses.length==0? Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor,)):
              ListView.separated(
                itemBuilder: (context, index) => (VerseItem( verses[index],index+1)),
                itemCount: verses.length,
                separatorBuilder: (context, index) =>
                 Padding(
                   padding: const EdgeInsets.only(left: 25,right: 25),
                   child: Divider(
                    thickness: 2,
                    color: Theme.of(context).accentColor,
                ),
                 ),
              ),
            ),
          ),
        ));
  }

  void readFile(int index) async {
    String content = await rootBundle.loadString(
        'assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    setState(() {
      verses = lines;
    });
  }
}
