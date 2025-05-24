import 'package:flutter/material.dart';

import '../../../res/assets.dart';
import '../../../routes/routes.dart';
import 'custom_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: ,
      // surfaceTintColor: Colors.white,
      width: MediaQuery.sizeOf(context).width * .85,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.paddingOf(context).top,
          ),
          const SizedBox(
            height: 32,
          ),
          Center(
              child: Image.asset(
            Assets.logo,
            width: 112,
          )),
          const SizedBox(
            height: 52,
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemBuilder: (context, index) => drawerList(context)[index],
              itemCount: drawerList(context).length,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => const SizedBox(height: 16),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> drawerList(context) => [
      CustomListTile(
        title: 'home',
        onTap: () {
          context.go(Routes.homeScreen);
        },
      ),
      CustomListTile(
        title: 'works',
        onTap: () {
          context.go(Routes.worksScreen);
        },
      ),
      CustomListTile(
        title: 'about-me',
        onTap: () {
          context.go(Routes.aboutMeScreen);
        },
      ),
      CustomListTile(
        title: 'contacts',
        onTap: () {
          context.go(Routes.contactsScreen);
        },
      ),
    ];
