import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SnapshotRecord extends FirestoreRecord {
  SnapshotRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "url_list" field.
  List<String>? _urlList;
  List<String> get urlList => _urlList ?? const [];
  bool hasUrlList() => _urlList != null;

  // "device" field.
  DocumentReference? _device;
  DocumentReference? get device => _device;
  bool hasDevice() => _device != null;

  void _initializeFields() {
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _urlList = getDataList(snapshotData['url_list']);
    _device = snapshotData['device'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('snapshot');

  static Stream<SnapshotRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SnapshotRecord.fromSnapshot(s));

  static Future<SnapshotRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SnapshotRecord.fromSnapshot(s));

  static SnapshotRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SnapshotRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SnapshotRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SnapshotRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SnapshotRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SnapshotRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSnapshotRecordData({
  DateTime? timestamp,
  DocumentReference? device,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'timestamp': timestamp,
      'device': device,
    }.withoutNulls,
  );

  return firestoreData;
}

class SnapshotRecordDocumentEquality implements Equality<SnapshotRecord> {
  const SnapshotRecordDocumentEquality();

  @override
  bool equals(SnapshotRecord? e1, SnapshotRecord? e2) {
    const listEquality = ListEquality();
    return e1?.timestamp == e2?.timestamp &&
        listEquality.equals(e1?.urlList, e2?.urlList) &&
        e1?.device == e2?.device;
  }

  @override
  int hash(SnapshotRecord? e) =>
      const ListEquality().hash([e?.timestamp, e?.urlList, e?.device]);

  @override
  bool isValidKey(Object? o) => o is SnapshotRecord;
}
