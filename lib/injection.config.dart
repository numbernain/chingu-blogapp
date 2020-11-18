// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/sign_in_form/bloc/auth_bloc.dart';
import 'domain/auth/auth_repo.dart';
import 'infrastructure/auth/firebase_auth.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/notes/note_repo.dart';
import 'application/auth/sign_in_form/bloc/notes/note_watcher/note_watcher_bloc.dart';
import 'application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.factory<NoteWatcherBloc>(() => NoteWatcherBloc(get<NoteRepo>()));
  gh.lazySingleton<AuthRepo>(
      () => FirebaseAuthFacade(get<FirebaseAuth>(), get<GoogleSignIn>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<AuthRepo>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<AuthRepo>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
