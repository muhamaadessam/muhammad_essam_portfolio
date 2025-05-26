import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:muhammad_essam_portfolio/routes/routes.dart';

import '../Core/components/SheardComponents/not_found_screen.dart';
import '../Features/AboutMe/presentation/screens/about_me_screen.dart';
import '../Features/Contacts/Presentation/Screens/contacts_screen.dart';
import '../Features/Home/Screens/home_screen.dart';
import '../Features/Projects/Presentation/Screens/projects_screen.dart';
import '../main.dart';

class AppPages {
  static late final GoRouter router;

  static initializeRouter() {
    router = GoRouter(
      navigatorKey: navigatorKey,
      routes: <RouteBase>[
        GoRoute(
          path: Routes.homeScreen,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: Routes.worksScreen,
          builder: (context, state) => const ProjectsScreen(),
        ),
        GoRoute(
          path: Routes.aboutMeScreen,
          builder: (context, state) => const AboutMeScreen(),
        ),
        GoRoute(
          path: Routes.contactsScreen,
          builder: (context, state) => const ContactsScreen(),
        ),
      ],
      errorPageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const NotFoundScreen(),
      ),
      // errorBuilder: (context, state) => const NotFoundScreen(),
      // Remove initialLocation to let router handle restored paths
      redirect: (context, state) {
        // Optional: Add any auth/redirect logic here
        return null;
      },
    );
  }
}
