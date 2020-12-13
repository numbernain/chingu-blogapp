import 'package:chingu_blogapp/application/auth/sign_in_form/bloc/notes/note_watcher/note_watcher_bloc.dart';
import 'package:chingu_blogapp/presentation/widgets/error_note_card.dart';
import 'package:chingu_blogapp/presentation/widgets/failure_display.dart';
import 'package:chingu_blogapp/presentation/widgets/note_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final notes = state.notes[index];
                if (notes.failureOption.isSome()) {
                  return ErrorNoteCard(note: notes);
                } else {
                  return NoteCard(note: notes);
                }
              },
              itemCount: state.notes.size,
            );
          },
          loadFailure: (state) {
            return FailureDisplay(failure: state.noteFailure);
          },
        );
      },
    );
  }
}
