import 'package:chingu_blogapp/application/auth/sign_in_form/bloc/notes/note_actor/note_actor_bloc.dart';
import 'package:chingu_blogapp/domain/notes/note_entity.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

import 'todo_display.dart';

class NoteCard extends StatelessWidget {
  final NoteEntity note;

  const NoteCard({
    Key key,
    @required this.note,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: note.color.getOrCrash(),
      child: InkWell(
        onTap: () {},
        onLongPress: () {
          // final noteActor = context.read<NoteActorBloc>();
          // _showDeletionDialog(context, noteActor);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.body.getOrCrash(),
                style: const TextStyle(fontSize: 18),
              ),
              if (note.todos.length > 0) ...[
                const SizedBox(height: 4),
                Wrap(
                  spacing: 8,
                  children: [
                    ...note.todos
                        .getOrCrash()
                        .map(
                          (todo) => TodoDisplay(
                            todo: todo,
                          ),
                        )
                        .iter,
                  ],
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }

  void _showDeletionDialog(BuildContext context, NoteActorBloc noteActor) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: const Text('Selected note:'),
          content: Text(
            note.body.getOrCrash(),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          actions: [
            FlatButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            FlatButton(
              onPressed: () {
                noteActor.add(NoteActorEvent.deleted(note));
                Navigator.pop(context);
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }
}
