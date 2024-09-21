import 'package:go_router/go_router.dart';
import 'package:take_a_bite/feature/authentication/auth_view.dart';
import 'package:take_a_bite/feature/home/view/home_view.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: "/home",
  routes: [
    GoRoute(
      path: '/auth',
      name: "auth",
      builder: (context, state) => const AuthView(),
    ),
    GoRoute(
      path: '/home',
      name: "home",
      builder: (context, state) => const HomeView(),
    ),
  ],
);
