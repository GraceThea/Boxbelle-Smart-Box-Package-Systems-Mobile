// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_database/firebase_database.dart';

Future updateDeviceStatusToTrue(String deviceName) async {
  // update device status to true in realtime database
  final databaseReference = FirebaseDatabase.instance.reference();
  await databaseReference.child(deviceName).update({'status': 'true'});
  print('Device status updated to true');
}
