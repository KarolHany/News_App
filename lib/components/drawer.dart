import 'package:flutter/material.dart';
import 'package:news_app_ths/screens/settings_page.dart';

import 'drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          const DrawerHeader(
              child: Icon(
            Icons.edit,
            size: 40,
          )),
          const SizedBox(
            height: 30,
          ),
          MyListTile(
            text: "homepage",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          MyListTile(
            text: "Settings",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}