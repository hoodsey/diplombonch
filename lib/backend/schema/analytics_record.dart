import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

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

  // "category" field.
  Category? _category;
  Category? get category => _category;
  bool hasCategory() => _category != null;

  // "habitStreaks" field.
  int? _habitStreaks;
  int get habitStreaks => _habitStreaks ?? 0;
  bool hasHabitStreaks() => _habitStreaks != null;

  // "CreateDate" field.
  DateTime? _createDate;
  DateTime? get createDate => _createDate;
  bool hasCreateDate() => _createDate != null;

  void _initializeFields() {
    _dailyFocusTime = castToType<int>(snapshotData['dailyFocusTime']);
    _completedTasks = castToType<int>(snapshotData['completedTasks']);
    _recommendationId = snapshotData['recommendationId'] as String?;
    _category = snapshotData['category'] is Category
        ? snapshotData['category']
        : deserializeEnum<Category>(snapshotData['category']);
    _habitStreaks = castToType<int>(snapshotData['habitStreaks']);
    _createDate = snapshotData['CreateDate'] as DateTime?;
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
  Category? category,
  int? habitStreaks,
  DateTime? createDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dailyFocusTime': dailyFocusTime,
      'completedTasks': completedTasks,
      'recommendationId': recommendationId,
      'category': category,
      'habitStreaks': habitStreaks,
      'CreateDate': createDate,
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
        e1?.recommendationId == e2?.recommendationId &&
        e1?.category == e2?.category &&
        e1?.habitStreaks == e2?.habitStreaks &&
        e1?.createDate == e2?.createDate;
  }

  @override
  int hash(AnalyticsRecord? e) => const ListEquality().hash([
        e?.dailyFocusTime,
        e?.completedTasks,
        e?.recommendationId,
        e?.category,
        e?.habitStreaks,
        e?.createDate
      ]);

  @override
  bool isValidKey(Object? o) => o is AnalyticsRecord;
}
