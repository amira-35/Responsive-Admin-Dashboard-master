import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/screens/components/custom_appbar.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:responsive_admin_dashboard/screens/homeScreen.dart';
import 'package:responsive_admin_dashboard/screens/licenses.dart';
import 'package:responsive_admin_dashboard/screens/servers.dart';
import 'package:responsive_admin_dashboard/screens/statistics.dart';
import 'package:responsive_admin_dashboard/screens/summaryTable';
import 'package:responsive_admin_dashboard/screens/users.dart';

class DashboardContent extends StatefulWidget {
  const DashboardContent({Key? key}) : super(key: key);

  @override
  State<DashboardContent> createState() => _DashboardContentState();
}

class _DashboardContentState extends State<DashboardContent> {
  @override
  Widget _selectedScreen = HomeScreen();

  currentScreen(item) {
    switch (item.route) {
      case HomeScreen.id:
        setState(() {
          _selectedScreen = HomeScreen();
        });
        break;
      case Licenses.id:
        setState(() {
          _selectedScreen = Licenses();
        });
        break;
      case Servers.id:
        setState(() {
          _selectedScreen = Servers();
        });
        break;
      case Statisics.id:
        setState(() {
          _selectedScreen = Statisics();
        });
        break;
      case SummaryTable.id:
        setState(() {
          _selectedScreen = SummaryTable();
        });
        break;
      case Users.id:
        setState(() {
          _selectedScreen = Users();
        });
        break;
    }
  }

  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: orange,
      body: SingleChildScrollView(
        child: CustomAppbar(),
      ),
      /*sideBar: SideBar(
        items: [
          //8DrawerMenu(),
        ],
        selectedRoute: HomeScreen.id,
        onSelected: (item) {
          currentScreen(item);
        },
      ),*/

      // sideBar: //SideBar(items: , selectedRoute: ),
    );

    //condition if ici !!!
  }
}

/**SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(appPadding),
        child: Column(
          children: [
            CustomAppbar(),
            SizedBox(
              height: appPadding,
            ),  ],
        ),
      ),
    );*/
