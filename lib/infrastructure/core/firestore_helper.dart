import 'package:chingu_blogapp/domain/core/errors.dart';
import 'package:chingu_blogapp/infrastructure/auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<FirebaseAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw UnauthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get noteCollection => collection('notes');
}
