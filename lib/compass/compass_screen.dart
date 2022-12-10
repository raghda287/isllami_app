import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'buildCompass.dart';
import 'buildManualReader.dart';
import 'buildPermissionSheet.dart';

class CompassScreen extends StatefulWidget {
  const CompassScreen({Key? key}) : super(key: key);

  @override
  State<CompassScreen> createState() => _CompassScreenState();
}

class _CompassScreenState extends State<CompassScreen> {
  bool _hasPermissions = false;

  @override
  void initState() {
    fetchPermissionStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        if (_hasPermissions) {
          return Column(
            children: <Widget>[
              buildManualReader(),
              Expanded(child: buildCompass()),
            ],
          );
        } else {
          return buildPermissionSheet();
        }
      }),
    );
  }


  void fetchPermissionStatus() {
    Permission.locationWhenInUse.status.then((status) {
      if (mounted) {
        setState(() => _hasPermissions = status == PermissionStatus.granted);
      }
    });
  }
  }

