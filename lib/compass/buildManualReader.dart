import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';

class buildManualReader extends StatefulWidget {

  @override
  State<buildManualReader> createState() => _buildManualReaderState();
}

class _buildManualReaderState extends State<buildManualReader> {
  DateTime? _lastReadAt;
  CompassEvent? _lastRead;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          ElevatedButton(
            child: Text('Read Value'),
            onPressed: () async {
              final CompassEvent tmp = await FlutterCompass.events!.first;
              setState(() {
                _lastRead = tmp;
                _lastReadAt = DateTime.now();
              });
            },
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$_lastRead',
                    style: Theme
                        .of(context)
                        .textTheme
                        .subtitle2,
                  ),
                  Text(
                    '$_lastReadAt',
                    style: Theme
                        .of(context)
                        .textTheme
                        .subtitle2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
