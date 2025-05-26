import 'package:flutter/material.dart';

import '../../../../Core/components/app_responsive.dart';
import '../Components/ContactsSections/mobile_contacts_screen.dart';
import '../Components/ContactsSections/tablet_contacts_screen.dart';
import '../Components/ContactsSections/web_contacts_screen.dart';

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
