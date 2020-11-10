import 'package:auto_route/auto_route_annotations.dart';
import 'package:chingu_blogapp/presentation/notes/note_form/note_form_screen.dart';
import 'package:chingu_blogapp/presentation/notes/note_overview/note_overview_screen.dart';
import 'package:chingu_blogapp/presentation/sign_in/sign_in_screen.dart';
import 'package:chingu_blogapp/presentation/splash/splash_screen.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
  MaterialRoute(page: SplashScreen, initial: true),
  MaterialRoute(page: SignInScreen),
  MaterialRoute(page: NoteOverviewScreen),
  MaterialRoute(page: NoteFormScreen, fullscreenDialog: true),
],)

class $Router {}
