import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chingu_blogapp/domain/notes/note_entity.dart';
import 'package:chingu_blogapp/domain/notes/note_failure.dart';
import 'package:chingu_blogapp/domain/notes/note_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'note_actor_event.dart';
part 'note_actor_state.dart';
part 'note_actor_bloc.freezed.dart';

@injectable
class NoteActorBloc extends Bloc<NoteActorEvent, NoteActorState> {
  final NoteRepo _noteRepo;

  NoteActorBloc(this._noteRepo) : super(const NoteActorState.initial());

  @override
  Stream<NoteActorState> mapEventToState(
    NoteActorEvent event,
  ) async* {
    yield const NoteActorState.actionInProgress();
    final possibleFailure = await _noteRepo.delete(event.note);
    yield possibleFailure.fold(
      (l) => NoteActorState.deleteFailure(l),
      (_) => const NoteActorState.deleteSuccess(),
    );
  }
}
 