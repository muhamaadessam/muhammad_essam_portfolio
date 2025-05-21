import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.body,
    this.drawer,
  });

  final Widget body;
  final Widget? drawer;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer,
      body: Row(
        children: [
          Column(
            children: [

          ]),
          body,
        ],
      ),
    );
  }
}
