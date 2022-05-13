import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/screens/homeScreen.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:responsive_admin_dashboard/screens/licenses.dart';
import 'package:responsive_admin_dashboard/screens/servers.dart';
import 'package:responsive_admin_dashboard/screens/statistics.dart';
import 'package:responsive_admin_dashboard/screens/summaryTable';
import 'package:responsive_admin_dashboard/screens/users.dart';

class Dashboradselected extends StatefulWidget {
  static const String id = "dashboradselected-screen";

  @override
  State<Dashboradselected> createState() => _DashboradselectedState();
}

class _DashboradselectedState extends State<Dashboradselected> {
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

  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
