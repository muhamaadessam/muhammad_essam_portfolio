import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:muhammad_essam_portfolio/Core/constants/colors.dart';
import 'package:muhammad_essam_portfolio/routes/pages.dart';

import 'Core/services_locator.dart';
import 'Features/AboutMe/presentation/controller/cubit.dart';
import 'Features/Skills/Presentation/controller/skills/cubit.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  await mainInitialize();
  runApp(const MyApp());
}

mainInitialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServicesLocator().init();
  // setUrlStrategy(PathUrlStrategy());
  // cleanRedirect();
  setUrlStrategy(HashUrlStrategy());
  AppPages.initializeRouter();
}

// void cleanRedirect() {
//   // Restore the path from ?redirect= if it exists
//   final uri = Uri.base;
//   final redirect = uri.queryParameters['redirect'];
//   if (redirect != null) {
//     html.window.history.replaceState(null, '', redirect);
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<SkillsCubit>()..getSkills(),
        ),
        BlocProvider(
          create: (context) => sl<AboutMeCubit>()..getFunFacts(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppPages.router,
        title: 'Muhammad Essam',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: mainColor),
          scaffoldBackgroundColor: backgroundColor,
          drawerTheme: const DrawerThemeData(
            backgroundColor: backgroundColor,
          ),
          useMaterial3: true,
        ),
      ),
    );
  }
}
