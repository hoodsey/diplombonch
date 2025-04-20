import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IrritantRecord extends FirestoreRecord {
  IrritantRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "irritantId" field.
  String? _irritantId;
  String get irritantId => _irritantId ?? '';
  bool hasIrritantId() => _irritantId != null;

  // "reflectionId" field.
  String? _reflectionId;
  String get reflectionId => _reflectionId ?? '';
  bool hasReflectionId() => _reflectionId != null;

  // "nameIrritant" field.
  String? _nameIrritant;
  String get nameIrritant => _nameIrritant ?? '';
  bool hasNameIrritant() => _nameIrritant != null;

  void _initializeFields() {
    _irritantId = snapshotData['irritantId'] as String?;
    _reflectionId = snapshotData['reflectionId'] as String?;
    _nameIrritant = snapshotData['nameIrritant'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Irritant');

  static Stream<IrritantRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IrritantRecord.fromSnapshot(s));

  static Future<IrritantRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IrritantRecord.fromSnapshot(s));

  static IrritantRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IrritantRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IrritantRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IrritantRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IrritantRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IrritantRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIrritantRecordData({
  String? irritantId,
  String? reflectionId,
  String? nameIrritant,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'irritantId': irritantId,
      'reflectionId': reflectionId,
      'nameIrritant': nameIrritant,
    }.withoutNulls,
  );

  return firestoreData;
}

class IrritantRecordDocumentEquality implements Equality<IrritantRecord> {
  const IrritantRecordDocumentEquality();

  @override
  bool equals(IrritantRecord? e1, IrritantRecord? e2) {
    return e1?.irritantId == e2?.irritantId &&
        e1?.reflectionId == e2?.reflectionId &&
        e1?.nameIrritant == e2?.nameIrritant;
  }

  @override
  int hash(IrritantRecord? e) => const ListEquality()
      .hash([e?.irritantId, e?.reflectionId, e?.nameIrritant]);

  @override
  bool isValidKey(Object? o) => o is IrritantRecord;
}
