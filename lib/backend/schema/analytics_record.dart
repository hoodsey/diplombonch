import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnalyticsRecord extends FirestoreRecord {
  AnalyticsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dailyFocusTime" field.
  int? _dailyFocusTime;
  int get dailyFocusTime => _dailyFocusTime ?? 0;
  bool hasDailyFocusTime() => _dailyFocusTime != null;

  // "completedTasks" field.
  int? _completedTasks;
  int get completedTasks => _completedTasks ?? 0;
  bool hasCompletedTasks() => _completedTasks != null;

  // "recommendationId" field.
  String? _recommendationId;
  String get recommendationId => _recommendationId ?? '';
  bool hasRecommendationId() => _recommendationId != null;

  void _initializeFields() {
    _dailyFocusTime = castToType<int>(snapshotData['dailyFocusTime']);
    _completedTasks = castToType<int>(snapshotData['completedTasks']);
    _recommendationId = snapshotData['recommendationId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Analytics');

  static Stream<AnalyticsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnalyticsRecord.fromSnapshot(s));

  static Future<AnalyticsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnalyticsRecord.fromSnapshot(s));

  static AnalyticsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnalyticsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnalyticsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnalyticsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnalyticsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnalyticsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnalyticsRecordData({
  int? dailyFocusTime,
  int? completedTasks,
  String? recommendationId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dailyFocusTime': dailyFocusTime,
      'completedTasks': completedTasks,
      'recommendationId': recommendationId,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnalyticsRecordDocumentEquality implements Equality<AnalyticsRecord> {
  const AnalyticsRecordDocumentEquality();

  @override
  bool equals(AnalyticsRecord? e1, AnalyticsRecord? e2) {
    return e1?.dailyFocusTime == e2?.dailyFocusTime &&
        e1?.completedTasks == e2?.completedTasks &&
        e1?.recommendationId == e2?.recommendationId;
  }

  @override
  int hash(AnalyticsRecord? e) => const ListEquality()
      .hash([e?.dailyFocusTime, e?.completedTasks, e?.recommendationId]);

  @override
  bool isValidKey(Object? o) => o is AnalyticsRecord;
}
