import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasksRecord extends FirestoreRecord {
  TasksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "last_edited" field.
  DateTime? _lastEdited;
  DateTime? get lastEdited => _lastEdited;
  bool hasLastEdited() => _lastEdited != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "priority" field.
  Priority? _priority;
  Priority? get priority => _priority;
  bool hasPriority() => _priority != null;

  // "category" field.
  Category? _category;
  Category? get category => _category;
  bool hasCategory() => _category != null;

  // "owner" field.
  int? _owner;
  int get owner => _owner ?? 0;
  bool hasOwner() => _owner != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _lastEdited = snapshotData['last_edited'] as DateTime?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _name = snapshotData['name'] as String?;
    _id = castToType<int>(snapshotData['id']);
    _priority = snapshotData['priority'] is Priority
        ? snapshotData['priority']
        : deserializeEnum<Priority>(snapshotData['priority']);
    _category = snapshotData['category'] is Category
        ? snapshotData['category']
        : deserializeEnum<Category>(snapshotData['category']);
    _owner = castToType<int>(snapshotData['owner']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tasks');

  static Stream<TasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TasksRecord.fromSnapshot(s));

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TasksRecord.fromSnapshot(s));

  static TasksRecord fromSnapshot(DocumentSnapshot snapshot) => TasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTasksRecordData({
  String? description,
  DateTime? lastEdited,
  DateTime? timeCreated,
  String? name,
  int? id,
  Priority? priority,
  Category? category,
  int? owner,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'last_edited': lastEdited,
      'time_created': timeCreated,
      'name': name,
      'id': id,
      'priority': priority,
      'category': category,
      'owner': owner,
    }.withoutNulls,
  );

  return firestoreData;
}

class TasksRecordDocumentEquality implements Equality<TasksRecord> {
  const TasksRecordDocumentEquality();

  @override
  bool equals(TasksRecord? e1, TasksRecord? e2) {
    return e1?.description == e2?.description &&
        e1?.lastEdited == e2?.lastEdited &&
        e1?.timeCreated == e2?.timeCreated &&
        e1?.name == e2?.name &&
        e1?.id == e2?.id &&
        e1?.priority == e2?.priority &&
        e1?.category == e2?.category &&
        e1?.owner == e2?.owner;
  }

  @override
  int hash(TasksRecord? e) => const ListEquality().hash([
        e?.description,
        e?.lastEdited,
        e?.timeCreated,
        e?.name,
        e?.id,
        e?.priority,
        e?.category,
        e?.owner
      ]);

  @override
  bool isValidKey(Object? o) => o is TasksRecord;
}
