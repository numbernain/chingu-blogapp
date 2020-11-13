// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'note_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NoteEntityTearOff {
  const _$NoteEntityTearOff();

// ignore: unused_element
  _NoteEntity call(
      {@required UniqueId id,
      @required NoteBody body,
      @required NoteColor color,
      @required List3<TodoItem> todos}) {
    return _NoteEntity(
      id: id,
      body: body,
      color: color,
      todos: todos,
    );
  }
}

// ignore: unused_element
const $NoteEntity = _$NoteEntityTearOff();

mixin _$NoteEntity {
  UniqueId get id;
  NoteBody get body;
  NoteColor get color;
  List3<TodoItem> get todos;

  $NoteEntityCopyWith<NoteEntity> get copyWith;
}

abstract class $NoteEntityCopyWith<$Res> {
  factory $NoteEntityCopyWith(
          NoteEntity value, $Res Function(NoteEntity) then) =
      _$NoteEntityCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id, NoteBody body, NoteColor color, List3<TodoItem> todos});
}

class _$NoteEntityCopyWithImpl<$Res> implements $NoteEntityCopyWith<$Res> {
  _$NoteEntityCopyWithImpl(this._value, this._then);

  final NoteEntity _value;
  // ignore: unused_field
  final $Res Function(NoteEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object body = freezed,
    Object color = freezed,
    Object todos = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      body: body == freezed ? _value.body : body as NoteBody,
      color: color == freezed ? _value.color : color as NoteColor,
      todos: todos == freezed ? _value.todos : todos as List3<TodoItem>,
    ));
  }
}

abstract class _$NoteEntityCopyWith<$Res> implements $NoteEntityCopyWith<$Res> {
  factory _$NoteEntityCopyWith(
          _NoteEntity value, $Res Function(_NoteEntity) then) =
      __$NoteEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id, NoteBody body, NoteColor color, List3<TodoItem> todos});
}

class __$NoteEntityCopyWithImpl<$Res> extends _$NoteEntityCopyWithImpl<$Res>
    implements _$NoteEntityCopyWith<$Res> {
  __$NoteEntityCopyWithImpl(
      _NoteEntity _value, $Res Function(_NoteEntity) _then)
      : super(_value, (v) => _then(v as _NoteEntity));

  @override
  _NoteEntity get _value => super._value as _NoteEntity;

  @override
  $Res call({
    Object id = freezed,
    Object body = freezed,
    Object color = freezed,
    Object todos = freezed,
  }) {
    return _then(_NoteEntity(
      id: id == freezed ? _value.id : id as UniqueId,
      body: body == freezed ? _value.body : body as NoteBody,
      color: color == freezed ? _value.color : color as NoteColor,
      todos: todos == freezed ? _value.todos : todos as List3<TodoItem>,
    ));
  }
}

class _$_NoteEntity extends _NoteEntity {
  const _$_NoteEntity(
      {@required this.id,
      @required this.body,
      @required this.color,
      @required this.todos})
      : assert(id != null),
        assert(body != null),
        assert(color != null),
        assert(todos != null),
        super._();

  @override
  final UniqueId id;
  @override
  final NoteBody body;
  @override
  final NoteColor color;
  @override
  final List3<TodoItem> todos;

  @override
  String toString() {
    return 'NoteEntity(id: $id, body: $body, color: $color, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(todos);

  @override
  _$NoteEntityCopyWith<_NoteEntity> get copyWith =>
      __$NoteEntityCopyWithImpl<_NoteEntity>(this, _$identity);
}

abstract class _NoteEntity extends NoteEntity {
  const _NoteEntity._() : super._();
  const factory _NoteEntity(
      {@required UniqueId id,
      @required NoteBody body,
      @required NoteColor color,
      @required List3<TodoItem> todos}) = _$_NoteEntity;

  @override
  UniqueId get id;
  @override
  NoteBody get body;
  @override
  NoteColor get color;
  @override
  List3<TodoItem> get todos;
  @override
  _$NoteEntityCopyWith<_NoteEntity> get copyWith;
}
