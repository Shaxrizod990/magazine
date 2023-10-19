
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:magazine/ui/blocs/navigation/navigation_cubit.dart';
import 'package:magazine/ui/screens/downloaded/downloaded_screen.dart';
import 'package:magazine/ui/screens/favorite/favorite_screen.dart';
import 'package:magazine/ui/screens/main/main_screen.dart';
import 'package:magazine/ui/screens/message/message_screen.dart';
import 'package:magazine/ui/screens/profile/profile_screen.dart';
import 'package:magazine/ui/screens/search/search_screen.dart';
import 'package:magazine/ui/screens/splash/SplashScreen.dart';
import 'package:magazine/utils/constants.dart';
import 'package:magazine/utils/not_found_page.dart';



class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: [
      GoRoute(
          name: 'splash', path: '/', builder: (context, state) => const SplashScreen()),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return MainScreen(screen: child);
        },
        routes: [
          GoRoute(
            name: Routes.searchNamedPage,
            path: '/search',
            pageBuilder: (context, state) => NoTransitionPage(
              child: SearchScreen(),
            ),
            routes: [
              GoRoute(
                name: Routes.favoriteNamedPage,
                path: 'favorite',
                builder: (context, state) => FavoriteScreen(),
              ),
            ],
          ),
          GoRoute(
            name: Routes.downloadedNamedPage,
            path: '/downloads',
            pageBuilder: (context, state) => NoTransitionPage(
              child: DownloadedScreen(),
            ),
            routes: [
              GoRoute(
                name: Routes.messagesNamedPage,
                path: 'message',
                builder: (context, state) => MessageScreen(),
              ),
            ],
          ),
          GoRoute(
            name: Routes.profileNamedPage,
            path: '/profile',
            pageBuilder: (context, state) => NoTransitionPage(
              child: ProfileScreen(),
            ),
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => const NotFoundPage(),
  );

  static GoRouter get router => _router;
}
