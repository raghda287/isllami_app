import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadeth/hadeth_model.dart';

import '../my_theme.dart';

class HadethScreen extends StatefulWidget {
  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {

  @override
  Widget build(BuildContext context) {

      readHadeth();

    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/hadeth.png'),
          const Divider(
            thickness: 3,
            color: MyTheme.lightPrimary,
          ),
          const Text(
            'hadeth Name',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          const Divider(
            thickness: 3,
            color: MyTheme.lightPrimary,
          ),
          Expanded(
              child: ListView.separated(
            shrinkWrap: false,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Text('d'
            ),
            itemCount: 10, separatorBuilder: (BuildContext context, int index) =>  const Divider(
                thickness: 2,
                color: MyTheme.lightPrimary,
              ),
          )),
        ],
      ),
    );
  }

  void readHadeth() async {
    //read file from assets
    var fileContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    //separate each hadeth with #
    var allHadethContent = fileContent.trim().split('#\n');

    for (int i = 0; i < allHadethContent.length; i++) {
      var SingleHadethContent=allHadethContent[i];
      var singleHadethLine=SingleHadethContent.trim().split('\n');
      String title=singleHadethLine[0];
      singleHadethLine.removeAt(0);
     String content= allHadethContent.join('\n');
     HadethModel hadeth=HadethModel(title: title, content: content);
     print(title);
     print('==================');
     print(content);
      print('==================');

setState(() {

});
    }
  }
}

