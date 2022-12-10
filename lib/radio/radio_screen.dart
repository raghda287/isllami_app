import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';

class RadioScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/radio_image.png'),
          const SizedBox(height: 25,),

          Text('اذاعه القران الكريم',style: Theme.of(context).textTheme.headline4,),
          const SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous,size: 40,color: MyTheme.lightPrimary,)),
            const SizedBox(width: 25,),
            IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow,size: 40,color: MyTheme.lightPrimary,)),
              const SizedBox(width: 25,),

              IconButton(onPressed: (){}, icon: Icon(Icons.skip_next_sharp,size: 40,color: MyTheme.lightPrimary,)),
          ],),
        ],
      ),
    );
  }
}
