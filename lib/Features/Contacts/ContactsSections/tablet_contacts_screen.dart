import 'package:flutter/material.dart';

import '../../../../../routes/routes.dart';
import '../../AppBar/custom_app_bar.dart';
import '../../Footer/tablet_footer_section.dart';
import '../HomeSections/tablet_contacts_section.dart';

class TabletContactsScreen extends StatelessWidget {
  const TabletContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Important for scroll views
                  spacing: 64,
                  children: [
                    CustomAppBar(
                      currentRoute: Routes.contactsScreen,
                    ),
                    TabletContactsSection(
                      inHome: false,
                    ),
                    // const Spacer(),

                    // ProjectsSection(inHome: false,),
                    // TabletAboutMeSection(inHome: false,),
                    // TabletSkillsSection(inHome: false,),
                  ],
                ),
              ),
            ),
          ),
          // const Spacer(),
          TabletFooterSection(),
        ],
      ),
    );
  }
}
