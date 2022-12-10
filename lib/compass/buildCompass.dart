import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'dart:math' as math;

import 'package:islami_app/my_theme.dart';

class buildCompass extends StatefulWidget {

  @override
  State<buildCompass> createState() => _buildCompassState();
}

class _buildCompassState extends State<buildCompass> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<CompassEvent>(
      stream: FlutterCompass.events,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error reading heading: ${snapshot.error}');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        double? direction = snapshot.data!.heading;

        // if direction is null, then device does not support this sensor
        // show error message
        if (direction == null)
          return Center(
            child: Text("Device does not have sensors !"),
          );

        return Material(
          shape: CircleBorder(),
          clipBehavior: Clip.antiAlias,
          elevation: 4.0,
          child: Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child:Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/cadrant.png',color: MyTheme.lightPrimary,),
            Transform.rotate(
              angle: (direction * (math.pi / 180) * -1),
              child: Image.asset('assets/images/compass.png'),
            ),
              ],
            ),
             // angle: (direction * (math.pi / 180) * -1),
            ),

        );
      },
    );
  }
}