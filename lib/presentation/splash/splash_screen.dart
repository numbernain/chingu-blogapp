import 'package:auto_route/auto_route.dart';
import 'package:chingu_blogapp/application/auth/sign_in_form/bloc/auth_bloc.dart';
import 'package:chingu_blogapp/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) =>
              ExtendedNavigator.of(context).replace(Routes.noteOverviewScreen),
          unauthenticated: (_) =>
              ExtendedNavigator.of(context).replace(Routes.signInScreen),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
