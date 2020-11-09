import 'package:chingu_blogapp/domain/auth/user.dart';
import 'package:chingu_blogapp/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'auth_failure.dart';

abstract class AuthRepo {
  Future<Either<AuthFailure, Unit>> registerWithEmail({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmail({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<Option<User>> getSignedInUser();
  Future<void> signOut();
}
