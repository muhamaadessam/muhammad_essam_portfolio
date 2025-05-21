import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Features/Home/Screens/tablet_home_screen.dart';
import 'package:muhammad_essam_portfolio/Features/Home/Screens/web_home_screen.dart';

import '../../../Core/components/app_responsive.dart';
import 'mobile_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppResponsive(
      mobile: MobileHomeScreen(),
      tablet: TabletHomeScreen(),
      desktop: WebHomeScreen(),
    );
  }
}
