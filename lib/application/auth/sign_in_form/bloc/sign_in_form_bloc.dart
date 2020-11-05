import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chingu_blogapp/domain/auth/auth_failure.dart';
import 'package:chingu_blogapp/domain/auth/auth_repo.dart';
import 'package:chingu_blogapp/domain/auth/value_objects.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final AuthRepo _authRepo;
  SignInFormBloc(this._authRepo) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      registerWithEmailAndPassword: (e) async* {
        yield* _authRepoEmailAndPassword(
          _authRepo.registerWithEmail,
        );
      },
      signinWithEmailAndPassword: (e) async* {
        yield* _authRepoEmailAndPassword(
          _authRepo.signInWithEmail,
        );
      },
      signinWithGoogle: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        final failureOrSuccess = await _authRepo.signInWithGoogle();
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess),
        );
      },
    );
  }

  Stream<SignInFormState> _authRepoEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      @required EmailAddress emailAddress,
      @required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );

      yield state.copyWith(
        isSubmitting: false,
        showErrorMessage: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }
  }
}
