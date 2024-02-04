import 'package:flutter/material.dart';

import '../../res/assets_res.dart';
import '../../widgets/app_empty_widget.dart';

class AnalyticsView extends StatelessWidget {
  const AnalyticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Analytics'),
      ),
      body: const AppEmptyWidget(),
    );
  }
}
