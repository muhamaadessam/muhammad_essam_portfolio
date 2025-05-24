import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:muhammad_essam_portfolio/Core/components/app_responsive.dart';
import 'package:muhammad_essam_portfolio/Core/constants/colors.dart';

import '../../Core/components/SheardComponents/text_with_hash.dart';
import '../../res/assets.dart';
import '../../routes/routes.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.currentRoute});

  final String currentRoute;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(
            Assets.logo,
            width: 70,
          ),
          const Spacer(),
          Row(
            spacing: 20,
            children: [
              InkWell(
                child: TextWithHash(
                  text: 'home',
                  color: currentRoute == Routes.homeScreen
                      ? Colors.white
                      : grayColor,
                ),
                onTap: () {
                  if (currentRoute != Routes.homeScreen)
                    context.go(Routes.homeScreen);
                },
              ),
              InkWell(
                child: TextWithHash(
                  text: 'works',
                  color: currentRoute == Routes.worksScreen
                      ? Colors.white
                      : grayColor,
                ),
                onTap: () {
                  if (currentRoute != Routes.worksScreen)
                    context.go(Routes.worksScreen);
                },
              ),
              InkWell(
                child: TextWithHash(
                  text: 'about-me',
                  color: currentRoute == Routes.aboutMeScreen
                      ? Colors.white
                      : grayColor,
                ),
                onTap: () {
                  if (currentRoute != Routes.aboutMeScreen)
                    context.go(Routes.aboutMeScreen);
                },
              ),
              InkWell(
                child: TextWithHash(
                  text: 'contacts',
                  color: currentRoute == Routes.contactsScreen
                      ? Colors.white
                      : grayColor,
                ),
                onTap: () {
                  if (currentRoute != Routes.contactsScreen)
                    context.go(Routes.contactsScreen);
                },
              ),
            ],
          )
          // ActionsAppBar(),
        ],
      ),
    );
  }
}

class ActionsAppBar extends StatefulWidget {
  const ActionsAppBar({super.key});

  @override
  State<ActionsAppBar> createState() => _ActionsAppBarState();
}

class _ActionsAppBarState extends State<ActionsAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppResponsive(
      mobile: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.menu,
          color: grayColor,
        ),
      ),
      tablet: Row(
        spacing: 20,
        children: [
          // InkWell(
          //   child: TextWithHash(text: 'home'),
          //   onTap: () {},
          // ),
          InkWell(
            child: TextWithHash(text: 'works'),
            onTap: () {},
          ),
          InkWell(
            child: TextWithHash(text: 'about-me'),
            onTap: () {},
          ),
          InkWell(
            child: TextWithHash(text: 'contacts'),
            onTap: () {},
          ),
        ],
      ),
      desktop: Row(
        spacing: 20,
        children: [
          InkWell(
            child: TextWithHash(text: 'home'),
            onTap: () {},
          ),
          InkWell(
            child: TextWithHash(text: 'works'),
            onTap: () {},
          ),
          InkWell(
            child: TextWithHash(text: 'about-me'),
            onTap: () {},
          ),
          InkWell(
            child: TextWithHash(text: 'contacts'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
