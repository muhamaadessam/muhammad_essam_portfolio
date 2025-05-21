import 'package:flutter/material.dart';

import 'custom_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      surfaceTintColor: Colors.white,
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
            'assets/png/logo1.png',
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
        icon: 'profile',
        title: 'profile',
        onTap: () {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => const ProfileScreen()));
        },
      ),
      // const CustomListTile(
      //   icon: 'language',
      //   title: 'language',
      //   trailing: LanguageDropDownButton(),
      // ),
      CustomListTile(
        icon: 'setting',
        title: 'settings',
        onTap: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => const SettingsScreen()));
        },
      ),
      CustomListTile(
        icon: 'support-service',
        title: 'technicalSupport',
        onTap: () {
          // ChatCubit.get(context).getChat();
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => const TechnicalSupportScreen(
          //     ),
          //   ),
          // );
        },
      ),
      CustomListTile(
        icon: 'logout',
        title: 'logout',
        onTap: () {
          // Navigator.pushAndRemoveUntil(
          //     context,
          //     MaterialPageRoute(builder: (context) => const LoginScreen()),
          //     (route) => false);
          // CacheHelper.put(key: 'logged', value: false);
        },
      ),
    ];
