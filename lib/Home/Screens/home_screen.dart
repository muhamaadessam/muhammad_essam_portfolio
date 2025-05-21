import 'package:flutter/material.dart';

import '../../Core/components/CustomWidgets/custom_scaffold.dart';
import '../Components/center_home_side_widget.dart';
import '../Components/left_side_widget.dart';
import '../Components/right_side_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      var width = constraints.maxWidth;
      return CustomScaffold(
        body: SingleChildScrollView(
          child: IntrinsicHeight(
            child: Row(
              spacing: 50,
              children: [
                LeftSideWidget(width: 100),
                CenterHomeSideWidget(width: width - 300),
                RightSideWidget(width: 100),
              ],
            ),
          ),
        ),
      );
    });
  }
}

