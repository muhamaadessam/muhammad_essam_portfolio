import 'package:flutter/material.dart';

import '../Components/center_home_side_widget.dart';

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: CenterHomeSideWidget(),
        ),
      ),
    );
  }
}
