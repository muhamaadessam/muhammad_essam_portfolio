import 'package:flutter/material.dart';

import '../../../Core/components/SheardComponents/left_side_widget.dart';
import '../../../Core/components/SheardComponents/right_side_widget.dart';
import '../../../Features/Footer/web_footer_section.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IntrinsicHeight(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LeftSideWidget(),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: child,
                          )),
                          const RightSideWidget(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 96,
                  ),
                  const WebFooterSection(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
