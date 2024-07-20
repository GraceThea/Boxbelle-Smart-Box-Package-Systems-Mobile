// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_database/firebase_database.dart';

Future<String> fetchDeviceStatus(String deviceName) async {
  // Fetch device status from realtime database firebase
  final databaseReference = FirebaseDatabase.instance.reference();
  DatabaseEvent event =
      await databaseReference.child(deviceName).child('status').once();
  DataSnapshot snapshot = event.snapshot;
  return snapshot.value.toString();
}
