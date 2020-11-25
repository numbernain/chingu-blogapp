import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chingu_blogapp/domain/notes/note_entity.dart';
import 'package:chingu_blogapp/presentation/notes/note_form/misc/todo_item_classes.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  NoteFormBloc() : super(NoteFormState.initial());

  @override
  Stream<NoteFormState> mapEventToState(
    NoteFormEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
