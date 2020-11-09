import 'package:chingu_blogapp/domain/auth/user.dart';
import 'package:chingu_blogapp/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainX on FirebaseUser {
  User toDomain() {
    return User(id: UniqueId.fromUniqueString(uid));
  }
}
