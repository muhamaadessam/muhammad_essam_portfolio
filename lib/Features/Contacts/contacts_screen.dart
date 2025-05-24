import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Features/Contacts/ContactsSections/mobile_contacts_screen.dart';
import 'package:muhammad_essam_portfolio/Features/Contacts/ContactsSections/tablet_contacts_screen.dart';
import 'package:muhammad_essam_portfolio/Features/Contacts/ContactsSections/web_contacts_screen.dart';

import '../../Core/components/app_responsive.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppResponsive(
      mobile: MobileContactsScreen(),
      tablet: TabletContactsScreen(),
      desktop: WebContactsScreen(),
    );
  }
}
