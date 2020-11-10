// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../notes/note_form/note_form_screen.dart';
import '../notes/note_overview/note_overview_screen.dart';
import '../sign_in/sign_in_screen.dart';
import '../splash/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String signInScreen = '/sign-in-screen';
  static const String noteOverviewScreen = '/note-overview-screen';
  static const String noteFormScreen = '/note-form-screen';
  static const all = <String>{
    splashScreen,
    signInScreen,
    noteOverviewScreen,
    noteFormScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.signInScreen, page: SignInScreen),
    RouteDef(Routes.noteOverviewScreen, page: NoteOverviewScreen),
    RouteDef(Routes.noteFormScreen, page: NoteFormScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    SignInScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInScreen(),
        settings: data,
      );
    },
    NoteOverviewScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NoteOverviewScreen(),
        settings: data,
      );
    },
    NoteFormScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NoteFormScreen(),
        settings: data,
        fullscreenDialog: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashScreen() => push<dynamic>(Routes.splashScreen);

  Future<dynamic> pushSignInScreen() => push<dynamic>(Routes.signInScreen);

  Future<dynamic> pushNoteOverviewScreen() =>
      push<dynamic>(Routes.noteOverviewScreen);

  Future<dynamic> pushNoteFormScreen() => push<dynamic>(Routes.noteFormScreen);
}
