import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HabitLogsRecord extends FirestoreRecord {
  HabitLogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "habitLogId" field.
  int? _habitLogId;
  int get habitLogId => _habitLogId ?? 0;
  bool hasHabitLogId() => _habitLogId != null;

  // "habitId" field.
  int? _habitId;
  int get habitId => _habitId ?? 0;
  bool hasHabitId() => _habitId != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "countActual" field.
  int? _countActual;
  int get countActual => _countActual ?? 0;
  bool hasCountActual() => _countActual != null;

  void _initializeFields() {
    _habitLogId = castToType<int>(snapshotData['habitLogId']);
    _habitId = castToType<int>(snapshotData['habitId']);
    _createdTime = snapshotData['created_time'] as DateTime?;
    _completed = snapshotData['completed'] as bool?;
    _countActual = castToType<int>(snapshotData['countActual']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('HabitLogs');

  static Stream<HabitLogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HabitLogsRecord.fromSnapshot(s));

  static Future<HabitLogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HabitLogsRecord.fromSnapshot(s));

  static HabitLogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HabitLogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HabitLogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HabitLogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HabitLogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HabitLogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHabitLogsRecordData({
  int? habitLogId,
  int? habitId,
  DateTime? createdTime,
  bool? completed,
  int? countActual,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'habitLogId': habitLogId,
      'habitId': habitId,
      'created_time': createdTime,
      'completed': completed,
      'countActual': countActual,
    }.withoutNulls,
  );

  return firestoreData;
}

class HabitLogsRecordDocumentEquality implements Equality<HabitLogsRecord> {
  const HabitLogsRecordDocumentEquality();

  @override
  bool equals(HabitLogsRecord? e1, HabitLogsRecord? e2) {
    return e1?.habitLogId == e2?.habitLogId &&
        e1?.habitId == e2?.habitId &&
        e1?.createdTime == e2?.createdTime &&
        e1?.completed == e2?.completed &&
        e1?.countActual == e2?.countActual;
  }

  @override
  int hash(HabitLogsRecord? e) => const ListEquality().hash([
        e?.habitLogId,
        e?.habitId,
        e?.createdTime,
        e?.completed,
        e?.countActual
      ]);

  @override
  bool isValidKey(Object? o) => o is HabitLogsRecord;
}
