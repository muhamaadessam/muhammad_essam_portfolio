import 'package:flutter/material.dart';

import '../../../Core/components/SheardComponents/left_side_widget.dart';
import '../../../Core/components/SheardComponents/right_side_widget.dart';
import '../Components/center_home_side_widget.dart';

class WebHomeScreen extends StatelessWidget {
  const WebHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Row(
            spacing: 50,
            children: [
              LeftSideWidget(),
              CenterHomeSideWidget(),
              RightSideWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
