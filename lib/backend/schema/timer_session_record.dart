import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimerSessionRecord extends FirestoreRecord {
  TimerSessionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "sessionId" field.
  String? _sessionId;
  String get sessionId => _sessionId ?? '';
  bool hasSessionId() => _sessionId != null;

  // "mode" field.
  String? _mode;
  String get mode => _mode ?? '';
  bool hasMode() => _mode != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  bool hasDuration() => _duration != null;

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "distractions" field.
  DateTime? _distractions;
  DateTime? get distractions => _distractions;
  bool hasDistractions() => _distractions != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _sessionId = snapshotData['sessionId'] as String?;
    _mode = snapshotData['mode'] as String?;
    _duration = castToType<int>(snapshotData['duration']);
    _startTime = snapshotData['startTime'] as DateTime?;
    _endTime = snapshotData['endTime'] as DateTime?;
    _distractions = snapshotData['distractions'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TimerSession');

  static Stream<TimerSessionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TimerSessionRecord.fromSnapshot(s));

  static Future<TimerSessionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TimerSessionRecord.fromSnapshot(s));

  static TimerSessionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TimerSessionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TimerSessionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TimerSessionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TimerSessionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TimerSessionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTimerSessionRecordData({
  DateTime? createdAt,
  String? sessionId,
  String? mode,
  int? duration,
  DateTime? startTime,
  DateTime? endTime,
  DateTime? distractions,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'sessionId': sessionId,
      'mode': mode,
      'duration': duration,
      'startTime': startTime,
      'endTime': endTime,
      'distractions': distractions,
    }.withoutNulls,
  );

  return firestoreData;
}

class TimerSessionRecordDocumentEquality
    implements Equality<TimerSessionRecord> {
  const TimerSessionRecordDocumentEquality();

  @override
  bool equals(TimerSessionRecord? e1, TimerSessionRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.sessionId == e2?.sessionId &&
        e1?.mode == e2?.mode &&
        e1?.duration == e2?.duration &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.distractions == e2?.distractions;
  }

  @override
  int hash(TimerSessionRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.sessionId,
        e?.mode,
        e?.duration,
        e?.startTime,
        e?.endTime,
        e?.distractions
      ]);

  @override
  bool isValidKey(Object? o) => o is TimerSessionRecord;
}
