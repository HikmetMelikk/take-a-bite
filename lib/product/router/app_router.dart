import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:take_a_bite/feature/authentication/auth_view.dart';
import 'package:take_a_bite/feature/favorites/view/favorites_view.dart';
import 'package:take_a_bite/feature/home/view/home_view.dart';
import 'package:take_a_bite/feature/profile/view/profile_view.dart';
import 'package:take_a_bite/product/router/scaffold_with_nav_bar.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
// final GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
// final GlobalKey<NavigatorState> _favoritesNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'favorites');
// final GlobalKey<NavigatorState> _profileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'profile');

final GoRouter appRouter = GoRouter(
  initialLocation: "/home",
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      path: '/auth',
      name: "auth",
      builder: (context, state) => const AuthView(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (BuildContext context, GoRouterState state, StatefulNavigationShell navigationShell) {
        return ScaffoldWithNavBar(
          navigationShell: navigationShell,
        );
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/home',
              name: "home",
              builder: (BuildContext context, GoRouterState state) => const HomeView(label: 'home'),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/favorites',
              name: "favorites",
              builder: (BuildContext context, GoRouterState state) => const FavoritesView(label: 'favorites'),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/profile',
              name: "profile",
              builder: (BuildContext context, GoRouterState state) => const ProfileView(label: 'profile'),
            ),
          ],
        ),
      ],
    ),
  ],
);
