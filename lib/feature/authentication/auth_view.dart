import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    final authProviders = [EmailAuthProvider()];

    return Scaffold(
      body: SignInScreen(
        providers: authProviders,
        actions: [
          AuthStateChangeAction<SignedIn>(
            (context, state) => context.goNamed("home"),
          ),
          AuthStateChangeAction<UserCreated>(
            (context, state) => context.goNamed("home"),
          ),
        ],
      ),
    );
  }
}
