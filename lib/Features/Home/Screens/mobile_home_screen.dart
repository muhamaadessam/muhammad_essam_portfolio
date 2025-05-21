import 'package:flutter/material.dart';

import '../Components/center_home_side_widget.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CenterHomeSideWidget(),
        ),
      ),
    );
  }
}
