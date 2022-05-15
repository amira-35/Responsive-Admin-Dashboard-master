// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_admin_dashboard/screens/login/homedesktop.dart';
import 'package:responsive_admin_dashboard/screens/login/homemobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

// ignore: camel_case_types
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeMobile(),
      desktop: HomeDesktop(),
     
    );
  }
}
