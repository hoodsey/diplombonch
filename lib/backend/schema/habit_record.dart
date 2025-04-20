import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HabitRecord extends FirestoreRecord {
  HabitRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "habitId" field.
  int? _habitId;
  int get habitId => _habitId ?? 0;
  bool hasHabitId() => _habitId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "frequency" field.
  String? _frequency;
  String get frequency => _frequency ?? '';
  bool hasFrequency() => _frequency != null;

  // "notificationTime" field.
  String? _notificationTime;
  String get notificationTime => _notificationTime ?? '';
  bool hasNotificationTime() => _notificationTime != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "goal" field.
  String? _goal;
  String get goal => _goal ?? '';
  bool hasGoal() => _goal != null;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  // "countExpected" field.
  int? _countExpected;
  int get countExpected => _countExpected ?? 0;
  bool hasCountExpected() => _countExpected != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _habitId = castToType<int>(snapshotData['habitId']);
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _frequency = snapshotData['frequency'] as String?;
    _notificationTime = snapshotData['notificationTime'] as String?;
    _category = snapshotData['category'] as String?;
    _goal = snapshotData['goal'] as String?;
    _color = snapshotData['color'] as String?;
    _countExpected = castToType<int>(snapshotData['countExpected']);
    _createdTime = snapshotData['createdTime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Habit');

  static Stream<HabitRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HabitRecord.fromSnapshot(s));

  static Future<HabitRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HabitRecord.fromSnapshot(s));

  static HabitRecord fromSnapshot(DocumentSnapshot snapshot) => HabitRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HabitRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HabitRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HabitRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HabitRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHabitRecordData({
  int? habitId,
  String? title,
  String? description,
  String? frequency,
  String? notificationTime,
  String? category,
  String? goal,
  String? color,
  int? countExpected,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'habitId': habitId,
      'title': title,
      'description': description,
      'frequency': frequency,
      'notificationTime': notificationTime,
      'category': category,
      'goal': goal,
      'color': color,
      'countExpected': countExpected,
      'createdTime': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class HabitRecordDocumentEquality implements Equality<HabitRecord> {
  const HabitRecordDocumentEquality();

  @override
  bool equals(HabitRecord? e1, HabitRecord? e2) {
    return e1?.habitId == e2?.habitId &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.frequency == e2?.frequency &&
        e1?.notificationTime == e2?.notificationTime &&
        e1?.category == e2?.category &&
        e1?.goal == e2?.goal &&
        e1?.color == e2?.color &&
        e1?.countExpected == e2?.countExpected &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(HabitRecord? e) => const ListEquality().hash([
        e?.habitId,
        e?.title,
        e?.description,
        e?.frequency,
        e?.notificationTime,
        e?.category,
        e?.goal,
        e?.color,
        e?.countExpected,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is HabitRecord;
}
