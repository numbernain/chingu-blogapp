import 'package:chingu_blogapp/domain/core/value_objects.dart';
import 'package:chingu_blogapp/domain/notes/note_value_object.dart';
import 'package:chingu_blogapp/domain/notes/todo_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item_classes.freezed.dart';

@freezed
abstract class TodoItemPrimitive implements _$TodoItemPrimitive {
  const TodoItemPrimitive._();

  const factory TodoItemPrimitive({
    @required UniqueId id,
    @required String name,
    @required bool done,
  }) = _TodoItemPrimitive;

  factory TodoItemPrimitive.empty() => TodoItemPrimitive(
        id: UniqueId(),
        name: '',
        done: false,
      );

      
  factory TodoItemPrimitive.fromDomain(TodoItem todoItem) {
    return TodoItemPrimitive(
      id: todoItem.id,
      name: todoItem.name.getOrCrash(),
      done: todoItem.done,
    );
  }

  TodoItem toDomain() {
    return TodoItem(
      id: id,
      name: TodoName(name),
      done: done,
    );
  }
}
 