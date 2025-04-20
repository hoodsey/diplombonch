import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecommendationRecord extends FirestoreRecord {
  RecommendationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "recommendationId" field.
  int? _recommendationId;
  int get recommendationId => _recommendationId ?? 0;
  bool hasRecommendationId() => _recommendationId != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _recommendationId = castToType<int>(snapshotData['recommendationId']);
    _type = snapshotData['type'] as String?;
    _text = snapshotData['text'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Recommendation')
          : FirebaseFirestore.instance.collectionGroup('Recommendation');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Recommendation').doc(id);

  static Stream<RecommendationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecommendationRecord.fromSnapshot(s));

  static Future<RecommendationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecommendationRecord.fromSnapshot(s));

  static RecommendationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecommendationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecommendationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecommendationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecommendationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecommendationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecommendationRecordData({
  int? recommendationId,
  String? type,
  String? text,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'recommendationId': recommendationId,
      'type': type,
      'text': text,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecommendationRecordDocumentEquality
    implements Equality<RecommendationRecord> {
  const RecommendationRecordDocumentEquality();

  @override
  bool equals(RecommendationRecord? e1, RecommendationRecord? e2) {
    return e1?.recommendationId == e2?.recommendationId &&
        e1?.type == e2?.type &&
        e1?.text == e2?.text;
  }

  @override
  int hash(RecommendationRecord? e) =>
      const ListEquality().hash([e?.recommendationId, e?.type, e?.text]);

  @override
  bool isValidKey(Object? o) => o is RecommendationRecord;
}
