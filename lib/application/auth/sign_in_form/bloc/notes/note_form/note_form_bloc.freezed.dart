// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NoteFormEventTearOff {
  const _$NoteFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<NoteEntity> initialNote) {
    return _Initialized(
      initialNote,
    );
  }

// ignore: unused_element
  _BodyChanged bodyChanged(String bodyStr) {
    return _BodyChanged(
      bodyStr,
    );
  }

// ignore: unused_element
  _ColorChanged colorChanged(Color color) {
    return _ColorChanged(
      color,
    );
  }

// ignore: unused_element
  _TodosChanged todosChanged(KtList<TodoItemPrimitive> todos) {
    return _TodosChanged(
      todos,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }
}

// ignore: unused_element
const $NoteFormEvent = _$NoteFormEventTearOff();

mixin _$NoteFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<NoteEntity> initialNote),
    @required Result bodyChanged(String bodyStr),
    @required Result colorChanged(Color color),
    @required Result todosChanged(KtList<TodoItemPrimitive> todos),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<NoteEntity> initialNote),
    Result bodyChanged(String bodyStr),
    Result colorChanged(Color color),
    Result todosChanged(KtList<TodoItemPrimitive> todos),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result bodyChanged(_BodyChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res>;
}

class _$NoteFormEventCopyWithImpl<$Res>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  final NoteFormEvent _value;
  // ignore: unused_field
  final $Res Function(NoteFormEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<NoteEntity> initialNote});
}

class __$InitializedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialNote = freezed,
  }) {
    return _then(_Initialized(
      initialNote == freezed
          ? _value.initialNote
          : initialNote as Option<NoteEntity>,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialNote) : assert(initialNote != null);

  @override
  final Option<NoteEntity> initialNote;

  @override
  String toString() {
    return 'NoteFormEvent.initialized(initialNote: $initialNote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialNote, initialNote) ||
                const DeepCollectionEquality()
                    .equals(other.initialNote, initialNote)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(initialNote);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<NoteEntity> initialNote),
    @required Result bodyChanged(String bodyStr),
    @required Result colorChanged(Color color),
    @required Result todosChanged(KtList<TodoItemPrimitive> todos),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return initialized(initialNote);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<NoteEntity> initialNote),
    Result bodyChanged(String bodyStr),
    Result colorChanged(Color color),
    Result todosChanged(KtList<TodoItemPrimitive> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialNote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result bodyChanged(_BodyChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements NoteFormEvent {
  const factory _Initialized(Option<NoteEntity> initialNote) = _$_Initialized;

  Option<NoteEntity> get initialNote;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$BodyChangedCopyWith<$Res> {
  factory _$BodyChangedCopyWith(
          _BodyChanged value, $Res Function(_BodyChanged) then) =
      __$BodyChangedCopyWithImpl<$Res>;
  $Res call({String bodyStr});
}

class __$BodyChangedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$BodyChangedCopyWith<$Res> {
  __$BodyChangedCopyWithImpl(
      _BodyChanged _value, $Res Function(_BodyChanged) _then)
      : super(_value, (v) => _then(v as _BodyChanged));

  @override
  _BodyChanged get _value => super._value as _BodyChanged;

  @override
  $Res call({
    Object bodyStr = freezed,
  }) {
    return _then(_BodyChanged(
      bodyStr == freezed ? _value.bodyStr : bodyStr as String,
    ));
  }
}

class _$_BodyChanged implements _BodyChanged {
  const _$_BodyChanged(this.bodyStr) : assert(bodyStr != null);

  @override
  final String bodyStr;

  @override
  String toString() {
    return 'NoteFormEvent.bodyChanged(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyChanged &&
            (identical(other.bodyStr, bodyStr) ||
                const DeepCollectionEquality().equals(other.bodyStr, bodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyStr);

  @override
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      __$BodyChangedCopyWithImpl<_BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<NoteEntity> initialNote),
    @required Result bodyChanged(String bodyStr),
    @required Result colorChanged(Color color),
    @required Result todosChanged(KtList<TodoItemPrimitive> todos),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<NoteEntity> initialNote),
    Result bodyChanged(String bodyStr),
    Result colorChanged(Color color),
    Result todosChanged(KtList<TodoItemPrimitive> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bodyChanged != null) {
      return bodyChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result bodyChanged(_BodyChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyChanged implements NoteFormEvent {
  const factory _BodyChanged(String bodyStr) = _$_BodyChanged;

  String get bodyStr;
  _$BodyChangedCopyWith<_BodyChanged> get copyWith;
}

abstract class _$ColorChangedCopyWith<$Res> {
  factory _$ColorChangedCopyWith(
          _ColorChanged value, $Res Function(_ColorChanged) then) =
      __$ColorChangedCopyWithImpl<$Res>;
  $Res call({Color color});
}

class __$ColorChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$ColorChangedCopyWith<$Res> {
  __$ColorChangedCopyWithImpl(
      _ColorChanged _value, $Res Function(_ColorChanged) _then)
      : super(_value, (v) => _then(v as _ColorChanged));

  @override
  _ColorChanged get _value => super._value as _ColorChanged;

  @override
  $Res call({
    Object color = freezed,
  }) {
    return _then(_ColorChanged(
      color == freezed ? _value.color : color as Color,
    ));
  }
}

class _$_ColorChanged implements _ColorChanged {
  const _$_ColorChanged(this.color) : assert(color != null);

  @override
  final Color color;

  @override
  String toString() {
    return 'NoteFormEvent.colorChanged(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ColorChanged &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(color);

  @override
  _$ColorChangedCopyWith<_ColorChanged> get copyWith =>
      __$ColorChangedCopyWithImpl<_ColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<NoteEntity> initialNote),
    @required Result bodyChanged(String bodyStr),
    @required Result colorChanged(Color color),
    @required Result todosChanged(KtList<TodoItemPrimitive> todos),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return colorChanged(color);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<NoteEntity> initialNote),
    Result bodyChanged(String bodyStr),
    Result colorChanged(Color color),
    Result todosChanged(KtList<TodoItemPrimitive> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (colorChanged != null) {
      return colorChanged(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result bodyChanged(_BodyChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorChanged implements NoteFormEvent {
  const factory _ColorChanged(Color color) = _$_ColorChanged;

  Color get color;
  _$ColorChangedCopyWith<_ColorChanged> get copyWith;
}

abstract class _$TodosChangedCopyWith<$Res> {
  factory _$TodosChangedCopyWith(
          _TodosChanged value, $Res Function(_TodosChanged) then) =
      __$TodosChangedCopyWithImpl<$Res>;
  $Res call({KtList<TodoItemPrimitive> todos});
}

class __$TodosChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$TodosChangedCopyWith<$Res> {
  __$TodosChangedCopyWithImpl(
      _TodosChanged _value, $Res Function(_TodosChanged) _then)
      : super(_value, (v) => _then(v as _TodosChanged));

  @override
  _TodosChanged get _value => super._value as _TodosChanged;

  @override
  $Res call({
    Object todos = freezed,
  }) {
    return _then(_TodosChanged(
      todos == freezed ? _value.todos : todos as KtList<TodoItemPrimitive>,
    ));
  }
}

class _$_TodosChanged implements _TodosChanged {
  const _$_TodosChanged(this.todos) : assert(todos != null);

  @override
  final KtList<TodoItemPrimitive> todos;

  @override
  String toString() {
    return 'NoteFormEvent.todosChanged(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodosChanged &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @override
  _$TodosChangedCopyWith<_TodosChanged> get copyWith =>
      __$TodosChangedCopyWithImpl<_TodosChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<NoteEntity> initialNote),
    @required Result bodyChanged(String bodyStr),
    @required Result colorChanged(Color color),
    @required Result todosChanged(KtList<TodoItemPrimitive> todos),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return todosChanged(todos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<NoteEntity> initialNote),
    Result bodyChanged(String bodyStr),
    Result colorChanged(Color color),
    Result todosChanged(KtList<TodoItemPrimitive> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todosChanged != null) {
      return todosChanged(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return todosChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result bodyChanged(_BodyChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todosChanged != null) {
      return todosChanged(this);
    }
    return orElse();
  }
}

abstract class _TodosChanged implements NoteFormEvent {
  const factory _TodosChanged(KtList<TodoItemPrimitive> todos) =
      _$_TodosChanged;

  KtList<TodoItemPrimitive> get todos;
  _$TodosChangedCopyWith<_TodosChanged> get copyWith;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

class __$SavedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'NoteFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<NoteEntity> initialNote),
    @required Result bodyChanged(String bodyStr),
    @required Result colorChanged(Color color),
    @required Result todosChanged(KtList<TodoItemPrimitive> todos),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<NoteEntity> initialNote),
    Result bodyChanged(String bodyStr),
    Result colorChanged(Color color),
    Result todosChanged(KtList<TodoItemPrimitive> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result bodyChanged(_BodyChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result bodyChanged(_BodyChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements NoteFormEvent {
  const factory _Saved() = _$_Saved;
}

class _$NoteFormStateTearOff {
  const _$NoteFormStateTearOff();

// ignore: unused_element
  _NoteFormState call(
      {@required NoteEntity note,
      @required bool showErrorMsg,
      @required bool isEditing,
      @required bool isSaving,
      @required Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption}) {
    return _NoteFormState(
      note: note,
      showErrorMsg: showErrorMsg,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $NoteFormState = _$NoteFormStateTearOff();

mixin _$NoteFormState {
  NoteEntity get note;
  bool get showErrorMsg;
  bool get isEditing;
  bool get isSaving;
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccessOption;

  $NoteFormStateCopyWith<NoteFormState> get copyWith;
}

abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res>;
  $Res call(
      {NoteEntity note,
      bool showErrorMsg,
      bool isEditing,
      bool isSaving,
      Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption});

  $NoteEntityCopyWith<$Res> get note;
}

class _$NoteFormStateCopyWithImpl<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  final NoteFormState _value;
  // ignore: unused_field
  final $Res Function(NoteFormState) _then;

  @override
  $Res call({
    Object note = freezed,
    Object showErrorMsg = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed ? _value.note : note as NoteEntity,
      showErrorMsg:
          showErrorMsg == freezed ? _value.showErrorMsg : showErrorMsg as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<NoteFailure, Unit>>,
    ));
  }

  @override
  $NoteEntityCopyWith<$Res> get note {
    if (_value.note == null) {
      return null;
    }
    return $NoteEntityCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

abstract class _$NoteFormStateCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$NoteFormStateCopyWith(
          _NoteFormState value, $Res Function(_NoteFormState) then) =
      __$NoteFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {NoteEntity note,
      bool showErrorMsg,
      bool isEditing,
      bool isSaving,
      Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $NoteEntityCopyWith<$Res> get note;
}

class __$NoteFormStateCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res>
    implements _$NoteFormStateCopyWith<$Res> {
  __$NoteFormStateCopyWithImpl(
      _NoteFormState _value, $Res Function(_NoteFormState) _then)
      : super(_value, (v) => _then(v as _NoteFormState));

  @override
  _NoteFormState get _value => super._value as _NoteFormState;

  @override
  $Res call({
    Object note = freezed,
    Object showErrorMsg = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_NoteFormState(
      note: note == freezed ? _value.note : note as NoteEntity,
      showErrorMsg:
          showErrorMsg == freezed ? _value.showErrorMsg : showErrorMsg as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<NoteFailure, Unit>>,
    ));
  }
}

class _$_NoteFormState implements _NoteFormState {
  const _$_NoteFormState(
      {@required this.note,
      @required this.showErrorMsg,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(note != null),
        assert(showErrorMsg != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final NoteEntity note;
  @override
  final bool showErrorMsg;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'NoteFormState(note: $note, showErrorMsg: $showErrorMsg, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteFormState &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.showErrorMsg, showErrorMsg) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMsg, showErrorMsg)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(showErrorMsg) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$NoteFormStateCopyWith<_NoteFormState> get copyWith =>
      __$NoteFormStateCopyWithImpl<_NoteFormState>(this, _$identity);
}

abstract class _NoteFormState implements NoteFormState {
  const factory _NoteFormState(
          {@required
              NoteEntity note,
          @required
              bool showErrorMsg,
          @required
              bool isEditing,
          @required
              bool isSaving,
          @required
              Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_NoteFormState;

  @override
  NoteEntity get note;
  @override
  bool get showErrorMsg;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$NoteFormStateCopyWith<_NoteFormState> get copyWith;
}
