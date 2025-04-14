import 'package:collection/collection.dart';

enum Category {
  stady,
  work,
  life,
}

enum Priority {
  high,
  normal,
  minor,
}

enum Stasus {
  newtasks,
  progress,
  broken,
  success,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Category):
      return Category.values.deserialize(value) as T?;
    case (Priority):
      return Priority.values.deserialize(value) as T?;
    case (Stasus):
      return Stasus.values.deserialize(value) as T?;
    default:
      return null;
  }
}
