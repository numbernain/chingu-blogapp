part of 'note_form_bloc.dart';

@freezed
abstract class NoteFormState with _$NoteFormState{
  const factory NoteFormState() = _NoteFormState;

  factory NoteFormState.initial() => NoteFormState();
}
