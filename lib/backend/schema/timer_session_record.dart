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

  // "tasksid" field.
  int? _tasksid;
  int get tasksid => _tasksid ?? 0;
  bool hasTasksid() => _tasksid != null;

  // "sessionid" field.
  int? _sessionid;
  int get sessionid => _sessionid ?? 0;
  bool hasSessionid() => _sessionid != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  bool hasCount() => _count != null;

  // "pause" field.
  int? _pause;
  int get pause => _pause ?? 0;
  bool hasPause() => _pause != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _mode = snapshotData['mode'] as String?;
    _duration = castToType<int>(snapshotData['duration']);
    _startTime = snapshotData['startTime'] as DateTime?;
    _endTime = snapshotData['endTime'] as DateTime?;
    _tasksid = castToType<int>(snapshotData['tasksid']);
    _sessionid = castToType<int>(snapshotData['sessionid']);
    _count = castToType<int>(snapshotData['count']);
    _pause = castToType<int>(snapshotData['pause']);
    _completed = snapshotData['completed'] as bool?;
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
  String? mode,
  int? duration,
  DateTime? startTime,
  DateTime? endTime,
  int? tasksid,
  int? sessionid,
  int? count,
  int? pause,
  bool? completed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'mode': mode,
      'duration': duration,
      'startTime': startTime,
      'endTime': endTime,
      'tasksid': tasksid,
      'sessionid': sessionid,
      'count': count,
      'pause': pause,
      'completed': completed,
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
        e1?.mode == e2?.mode &&
        e1?.duration == e2?.duration &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.tasksid == e2?.tasksid &&
        e1?.sessionid == e2?.sessionid &&
        e1?.count == e2?.count &&
        e1?.pause == e2?.pause &&
        e1?.completed == e2?.completed;
  }

  @override
  int hash(TimerSessionRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.mode,
        e?.duration,
        e?.startTime,
        e?.endTime,
        e?.tasksid,
        e?.sessionid,
        e?.count,
        e?.pause,
        e?.completed
      ]);

  @override
  bool isValidKey(Object? o) => o is TimerSessionRecord;
}
