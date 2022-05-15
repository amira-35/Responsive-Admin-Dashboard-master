import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/screens/components/header_text.dart';

import 'package:responsive_admin_dashboard/utils/helpers/app_helpers.dart';

class ScrollWidgets extends StatelessWidget {
  const ScrollWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            HeaderText(
            DateTime.now().formatdMMMMY(),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}
