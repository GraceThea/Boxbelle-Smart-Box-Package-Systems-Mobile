import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeviceRecord extends FirestoreRecord {
  DeviceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "device1" field.
  bool? _device1;
  bool get device1 => _device1 ?? false;
  bool hasDevice1() => _device1 != null;

  void _initializeFields() {
    _device1 = snapshotData['device1'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('device');

  static Stream<DeviceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeviceRecord.fromSnapshot(s));

  static Future<DeviceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DeviceRecord.fromSnapshot(s));

  static DeviceRecord fromSnapshot(DocumentSnapshot snapshot) => DeviceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeviceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeviceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeviceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeviceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeviceRecordData({
  bool? device1,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'device1': device1,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeviceRecordDocumentEquality implements Equality<DeviceRecord> {
  const DeviceRecordDocumentEquality();

  @override
  bool equals(DeviceRecord? e1, DeviceRecord? e2) {
    return e1?.device1 == e2?.device1;
  }

  @override
  int hash(DeviceRecord? e) => const ListEquality().hash([e?.device1]);

  @override
  bool isValidKey(Object? o) => o is DeviceRecord;
}
