import 'package:flutter/material.dart';

import '../../../../../Core/components/SheardComponents/web_screen.dart';
import '../../../../../routes/routes.dart';
import '../../AppBar/custom_app_bar.dart';
import '../HomeSections/web_contacts_section.dart';

class WebContactsScreen extends StatelessWidget {
  const WebContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WebScreen(
      child: Column(
        mainAxisSize: MainAxisSize.min, // Important for scroll views
        spacing: 96,
        children: [
          CustomAppBar(
            currentRoute: Routes.contactsScreen,
          ),
          WebContactsSection(
            inHome: false,
          ),
        ],
      ),
    );
  }
}
