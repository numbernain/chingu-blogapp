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
    // TODO: implement mapEventToState
  }
}
