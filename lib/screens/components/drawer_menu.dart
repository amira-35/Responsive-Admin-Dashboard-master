import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/screens/components/drawer_list_tile.dart';
import 'package:responsive_admin_dashboard/screens/homeScreen.dart';
import 'package:responsive_admin_dashboard/screens/users.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
              padding: EdgeInsets.all(appPadding),
              child: Container(
                  alignment: Alignment.topCenter,
                   
                  child: Image.asset("assets/images/sona.jpg"))),
          DrawerListTile(
              title: 'Home',
              svgSrc: 'assets/icons/Dashboard.svg',
              tap: () {
                route:
                HomeScreen.id;
              }),
          DrawerListTile(
              title: 'Users',
              svgSrc: 'assets/icons/Subscribers.svg',
              tap: () {
                route:
                Users.id;
              }),
          DrawerListTile(
              title: 'Servers', svgSrc: 'assets/icons/Setting.svg', tap: () {}),
          DrawerListTile(
              title: 'Licenses', svgSrc: 'assets/icons/Pages.svg', tap: () {}),
          DrawerListTile(
              title: 'Statistics',
              svgSrc: 'assets/icons/Statistics.svg',
              tap: () {}),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
            child: Divider(
              color: grey,
              thickness: 0.2,
            ),
          ),
          DrawerListTile(
              title: 'Table de Synthèse',
              svgSrc: 'assets/icons/Post.svg',
              tap: () {}),
          DrawerListTile(
              title: 'Logout', svgSrc: 'assets/icons/Logout.svg', tap: () {}),
        ],
      ),
    );
  }
}
