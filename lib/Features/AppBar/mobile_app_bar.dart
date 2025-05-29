import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:muhammad_essam_portfolio/Core/constants/colors.dart';

import '../../Core/components/SheardComponents/text_with_hash.dart';
import '../../res/assets.dart';
import '../../routes/routes.dart';

class MobileAppBar extends StatefulWidget {
  const MobileAppBar({super.key, required this.currentRoute});

  final String currentRoute;

  @override
  State<MobileAppBar> createState() => _MobileAppBarState();
}

class _MobileAppBarState extends State<MobileAppBar>
    with TickerProviderStateMixin {
  bool isDrawerOpen = false;
  late AnimationController icon;
  static const Duration duration = Duration(milliseconds: 1000);

  @override
  void initState() {
    icon = AnimationController(
      vsync: this,
      duration: duration,
    );
    super.initState();
  }

  @override
  void dispose() {
    icon.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Row(
          children: [
            Image.asset(
              Assets.essamLogoWithText,
              height: 40,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  // isDrawerOpen = !isDrawerOpen;
                  if (isDrawerOpen) {
                    icon.reverse();
                  } else {
                    icon.forward();
                  }
                  isDrawerOpen = !isDrawerOpen;
                });
              },
              icon: AnimatedIcon(
                icon: AnimatedIcons.menu_close,
                progress: icon,
                color: grayColor,
              ),
            ),
          ],
        ),
        // if (isDrawerOpen)
          AnimatedSize(
            duration: duration,
            curve: Curves.easeInOut,
            child:isDrawerOpen? Column(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: TextWithHash(
                    text: 'home',
                    color: widget.currentRoute == Routes.homeScreen
                        ? Colors.white
                        : grayColor,
                  ),
                  onTap: () {
                    if (widget.currentRoute != Routes.homeScreen)
                      context.go(Routes.homeScreen);
                  },
                ),
                InkWell(
                  child: TextWithHash(
                    text: 'projects',
                    color: widget.currentRoute == Routes.worksScreen
                        ? Colors.white
                        : grayColor,
                  ),
                  onTap: () {
                    if (widget.currentRoute != Routes.worksScreen)
                      context.go(Routes.worksScreen);
                  },
                ),
                InkWell(
                  child: TextWithHash(
                    text: 'about-me',
                    color: widget.currentRoute == Routes.aboutMeScreen
                        ? Colors.white
                        : grayColor,
                  ),
                  onTap: () {
                    if (widget.currentRoute != Routes.aboutMeScreen)
                      context.go(Routes.aboutMeScreen);
                  },
                ),
                InkWell(
                  child: TextWithHash(
                    text: 'contacts',
                    color: widget.currentRoute == Routes.contactsScreen
                        ? Colors.white
                        : grayColor,
                  ),
                  onTap: () {
                    if (widget.currentRoute != Routes.contactsScreen)
                      context.go(Routes.contactsScreen);
                  },
                ),
              ],
            ):SizedBox.shrink(),
          ),
      ]),
    );
  }
}
