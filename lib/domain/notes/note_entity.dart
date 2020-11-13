import 'package:chingu_blogapp/domain/core/failures.dart';
import 'package:chingu_blogapp/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'note_value_object.dart';
import 'todo_item.dart';

part 'note_entity.freezed.dart';

@freezed
abstract class NoteEntity implements _$NoteEntity {
  const NoteEntity._();

  const factory NoteEntity({
    @required UniqueId id,
    @required NoteBody body,
    @required NoteColor color,
    @required List3<TodoItem> todos,
  }) = _NoteEntity;

  factory NoteEntity.empty() => NoteEntity(
        id: UniqueId(),
        body: NoteBody(''),
        color: NoteColor(NoteColor.predefinedColors[0]),
        todos: List3(emptyList()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return body.failureOrUnit
        .andThen(todos.failureOrUnit)
        .andThen(
          todos
              .getOrCrash()
              .map((todoItem) => todoItem.failureOption)
              .filter((o) => o.isSome())
              .getOrElse(0, (_) => none())
              .fold(() => right(unit), (l) => left(l)),
        )
        .fold((l) => some(l), (_) => none());
  }
}
