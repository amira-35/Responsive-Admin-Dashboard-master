import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/screens/components/drawer_list_tile.dart';

import 'package:responsive_admin_dashboard/screens/dashborad/servers.dart';
import 'package:responsive_admin_dashboard/screens/dashborad/statistics.dart';
import 'package:responsive_admin_dashboard/screens/dashborad/summaryTable.dart';
import 'package:responsive_admin_dashboard/screens/dashborad/users.dart';

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
          SizedBox(
            height: 30.0,
          ),
          DrawerListTile(
              title: 'Gestion des Utilisateurs',
              svgSrc: 'assets/icons/Subscribers.svg',
              tap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Users()),
                );
              }),
          DrawerListTile(
              title: 'Gestions des Serveurs',
              svgSrc: 'assets/icons/Setting.svg',
              tap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Servers()),
                );
              }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
            child: Divider(
              color: grey,
              thickness: 0.2,
            ),
          ),
          DrawerListTile(
              title: 'Diagramme en Batons',
              svgSrc: 'assets/icons/Statistics.svg',
              tap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Statisics()),
                );
              }),
          DrawerListTile(
              title: 'Diagramme en Cercle',
              svgSrc: 'assets/icons/Statistics.svg',
              tap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Statisics()),
                );
              }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
            child: Divider(
              color: grey,
              thickness: 0.2,
            ),
          ),
          DrawerListTile(
              title: 'Historique',
              svgSrc: 'assets/icons/Post.svg',
              tap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SummaryTable()),
                );
              }),
          DrawerListTile(
              title: 'Déconnexion',
              svgSrc: 'assets/icons/Logout.svg',
              tap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
