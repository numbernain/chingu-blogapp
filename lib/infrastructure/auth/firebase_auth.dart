import 'package:chingu_blogapp/domain/auth/auth_failure.dart';
import 'package:chingu_blogapp/domain/auth/auth_repo.dart';
import 'package:chingu_blogapp/domain/auth/user.dart';
import 'package:dartz/dartz.dart';
import 'package:chingu_blogapp/domain/auth/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import './firebase_user_mapper.dart';

@LazySingleton(as: AuthRepo)
class FirebaseAuthFacade implements AuthRepo {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);
  @override
  Future<Either<AuthFailure, Unit>> registerWithEmail({
    EmailAddress emailAddress,
    Password password,
  }) async {
    final emailStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailStr, password: passwordStr);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyUsed());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmail({
    EmailAddress emailAddress,
    Password password,
  }) async {
    final emailStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailStr, password: passwordStr);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPassword());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuth = await googleUser.authentication;
      final googleCredential = GoogleAuthProvider.getCredential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );
      await _firebaseAuth.signInWithCredential(googleCredential);
      return right(unit);
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<User>> getSignedInUser() => _firebaseAuth
      .currentUser()
      .then((firebaseUser) => optionOf(firebaseUser?.toDomain()));

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);
}
