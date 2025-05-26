import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/components/app_responsive.dart';

import '../Components/AboutMeSections/mobile_about_me_screen.dart';
import '../Components/AboutMeSections/tablet_about_me_screen.dart';
import '../Components/AboutMeSections/web_about_me_screen.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppResponsive(
      mobile: MobileAboutMeScreen(),
      tablet: TabletAboutMeScreen(),
      desktop: WebAboutMeScreen(),
    );
  }
}
