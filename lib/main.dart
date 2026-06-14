import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:muhammad_essam_portfolio/Core/constants/colors.dart';
import 'package:muhammad_essam_portfolio/Features/Projects/Presentation/controller/projects/cubit.dart';
import 'package:muhammad_essam_portfolio/routes/pages.dart';

import 'Core/Network/Local/cache_helper.dart';
import 'Core/Network/Local/constant.dart';
import 'Core/services_locator.dart';
import 'Features/AboutMe/presentation/controller/cubit.dart';
import 'Features/Skills/Presentation/controller/skills/cubit.dart';
import 'firebase_options.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  await mainInitialize();
  runApp(const MyApp());
}

mainInitialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServicesLocator().init();
  await CacheHelper.init();
  usePathUrlStrategy();
  AppPages.initializeRouter();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await getPortfolioData();
}

getPortfolioData() async {
  final doc = await FirebaseFirestore.instance
      .collection('portfolio')
      .doc('user_data')
      .get();

  if (!doc.exists || doc.data() == null) {
    null;
  }

  final data = doc.data()!;

  CacheHelper.put(key: AppStorage.objective, value: data['objective']);
  CacheHelper.put(key: AppStorage.company, value: data['company']);
  CacheHelper.put(key: AppStorage.phone, value: data['phone']);
  CacheHelper.put(key: AppStorage.email, value: data['email']);
  CacheHelper.put(key: AppStorage.name, value: data['name']);
  CacheHelper.put(key: AppStorage.linkedin, value: data['linkedin']);
  CacheHelper.put(key: AppStorage.github, value: data['github']);
  CacheHelper.put(key: AppStorage.jopTitle, value: data['jop_title']);
  CacheHelper.put(key: AppStorage.image, value: data['image']);
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
          create: (context) => sl<AboutMeCubit>()..init(),
        ),
        BlocProvider(
          create: (context) => sl<ProjectsCubit>()..getProjects(),
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
