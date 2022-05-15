import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/screens/components/drawer_list_tile.dart';
import 'package:responsive_admin_dashboard/screens/dashborad/licenses.dart';
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
          DrawerListTile(
              title: 'Users',
              svgSrc: 'assets/icons/Subscribers.svg',
              tap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Users()),
                );
              }),
          DrawerListTile(
              title: 'Servers',
              svgSrc: 'assets/icons/Setting.svg',
              tap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Servers()),
                );
              }),
          DrawerListTile(
              title: 'Licenses',
              svgSrc: 'assets/icons/Pages.svg',
              tap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Licenses()),
                );
              }),
          DrawerListTile(
              title: 'History',
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
              title: 'Summary Table',
              svgSrc: 'assets/icons/Post.svg',
              tap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SummaryTable()),
                );
              }),
          DrawerListTile(
              title: 'Logout',
              svgSrc: 'assets/icons/Logout.svg',
              tap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
