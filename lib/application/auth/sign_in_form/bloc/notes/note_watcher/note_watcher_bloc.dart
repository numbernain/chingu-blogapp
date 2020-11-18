import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chingu_blogapp/domain/notes/note_entity.dart';
import 'package:chingu_blogapp/domain/notes/note_failure.dart';
import 'package:chingu_blogapp/domain/notes/note_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

part 'note_watcher_event.dart';
part 'note_watcher_state.dart';
part 'note_watcher_bloc.freezed.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  final NoteRepo _noteRepo;

  NoteWatcherBloc(this._noteRepo) : super(const NoteWatcherState.initial());

  StreamSubscription<Either<NoteFailure, KtList<NoteEntity>>>
      _noteStreamSubscription;

  @override
  Stream<NoteWatcherState> mapEventToState(
    NoteWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const NoteWatcherState.loadInProgress();
        await _noteStreamSubscription?.cancel();
        _noteStreamSubscription = _noteRepo.watchAll().listen(
              (failureOrNotes) =>
                  add(NoteWatcherEvent.notesReceived(failureOrNotes)),
            );
      },
      watchUncompletedStarted: (e) async* {
        yield const NoteWatcherState.loadInProgress();
        await _noteStreamSubscription?.cancel();
        _noteStreamSubscription = _noteRepo.watchUncompleted().listen(
              (failureOrNotes) =>
                  add(NoteWatcherEvent.notesReceived(failureOrNotes)),
            );
      },
      notesReceived: (e) async* {
        yield e.failureOrNotes.fold(
          (l) => NoteWatcherState.loadFailure(l),
          (r) => NoteWatcherState.loadSuccess(r),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _noteStreamSubscription?.cancel(); 
    return super.close();
  }
}
