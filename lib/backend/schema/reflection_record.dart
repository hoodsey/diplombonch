import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReflectionRecord extends FirestoreRecord {
  ReflectionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "reflectionId" field.
  String? _reflectionId;
  String get reflectionId => _reflectionId ?? '';
  bool hasReflectionId() => _reflectionId != null;

  // "sessionId" field.
  String? _sessionId;
  String get sessionId => _sessionId ?? '';
  bool hasSessionId() => _sessionId != null;

  // "productivityRating" field.
  String? _productivityRating;
  String get productivityRating => _productivityRating ?? '';
  bool hasProductivityRating() => _productivityRating != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _reflectionId = snapshotData['reflectionId'] as String?;
    _sessionId = snapshotData['sessionId'] as String?;
    _productivityRating = snapshotData['productivityRating'] as String?;
    _createdTime = snapshotData['createdTime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reflection');

  static Stream<ReflectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReflectionRecord.fromSnapshot(s));

  static Future<ReflectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReflectionRecord.fromSnapshot(s));

  static ReflectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReflectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReflectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReflectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReflectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReflectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReflectionRecordData({
  String? reflectionId,
  String? sessionId,
  String? productivityRating,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'reflectionId': reflectionId,
      'sessionId': sessionId,
      'productivityRating': productivityRating,
      'createdTime': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReflectionRecordDocumentEquality implements Equality<ReflectionRecord> {
  const ReflectionRecordDocumentEquality();

  @override
  bool equals(ReflectionRecord? e1, ReflectionRecord? e2) {
    return e1?.reflectionId == e2?.reflectionId &&
        e1?.sessionId == e2?.sessionId &&
        e1?.productivityRating == e2?.productivityRating &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(ReflectionRecord? e) => const ListEquality().hash(
      [e?.reflectionId, e?.sessionId, e?.productivityRating, e?.createdTime]);

  @override
  bool isValidKey(Object? o) => o is ReflectionRecord;
}
