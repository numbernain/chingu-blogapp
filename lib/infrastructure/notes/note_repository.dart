import 'package:chingu_blogapp/domain/notes/note_failure.dart';
import 'package:chingu_blogapp/domain/notes/note_entity.dart';
import 'package:chingu_blogapp/domain/notes/note_repo.dart';
import 'package:chingu_blogapp/infrastructure/core/firestore_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import 'note_dto.dart';

@LazySingleton(as: NoteRepo)
class NoteRepository implements NoteRepo {
  final Firestore _firestore;

  NoteRepository(this._firestore);

  @override
  Stream<Either<NoteFailure, KtList<NoteEntity>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.noteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<NoteFailure, KtList<NoteEntity>>(snapshot
              .documents
              .map((doc) => NoteDto.fromFirestore(doc).toDomain())
              .toImmutableList()),
        )
        .handleError(
      (e) {
        if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
          return left(const NoteFailure.insufficientPermission());
        } else {
          return left(const NoteFailure.unexpected());
        }
      },
    );
  }

  @override
  Stream<Either<NoteFailure, KtList<NoteEntity>>> watchUncompleted() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.noteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.documents
              .map((doc) => NoteDto.fromFirestore(doc).toDomain()),
        )
        .map(
          (notes) => right<NoteFailure, KtList<NoteEntity>>(
            notes
                .where((note) =>
                    note.todos.getOrCrash().any((todoItem) => !todoItem.done))
                .toImmutableList(),
          ),
        )
        .handleError(
      (e) {
        if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
          return left(const NoteFailure.insufficientPermission());
        } else {
          return left(const NoteFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<NoteFailure, Unit>> create(NoteEntity note) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(NoteEntity note) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<NoteFailure, Unit>> update(NoteEntity note) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
