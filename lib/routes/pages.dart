import 'package:go_router/go_router.dart';
import 'package:muhammad_essam_portfolio/Features/AbouMe/about_me_screen.dart';
import 'package:muhammad_essam_portfolio/routes/routes.dart';

import '../Core/components/not_found_screen.dart';
import '../Features/Home/Screens/home_screen.dart';
import '../main.dart';

class AppPages {
  AppPages._();

  static late final GoRouter router;

  static initializeRouter(String initialRoute) {
    router = GoRouter(
      navigatorKey: navigatorKey,
      initialLocation: initialRoute,
      routes: <RouteBase>[
        GoRoute(
          path: Routes.home,
          builder: (context, state) => HomeScreen(),
          routes: <RouteBase>[
            GoRoute(
              path: '/projects',
              builder: (context, state) => HomeScreen(),
            ),
            GoRoute(
              path: Routes.AboutMeScreen,
              builder: (context, state) => AboutMeScreen(),
            ),
            GoRoute(
              path: '/contacts',
              builder: (context, state) => HomeScreen(),
            ),
          ],
        ),
      ],
      errorBuilder: (context, state) => NotFoundScreen(),
    );
  }
}
