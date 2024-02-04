import 'package:flutter/material.dart';

import '../../res/assets_res.dart';
import '../../widgets/app_empty_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: const AppEmptyWidget(),
    );
  }
}
