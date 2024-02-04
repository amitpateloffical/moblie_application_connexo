import 'package:connexo/view_model/main_view_model.dart';
import 'package:connexo/widgets/base_view_model.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../widgets/base_view.dart';

class MainView extends BaseView<MainViewModel> {
  final Widget child;
  final String location;
  const MainView({super.key, required this.location, required this.child});

  @override
  Widget build(BuildContext context, MainViewModel viewModel) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Dashboard'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.analytics, title: 'Analytics'),
          TabItem(icon: Icons.settings, title: 'Settings'),
        ],
        onTap: (int index) => viewModel.changeRoot(context, index),
        style: TabStyle.fixedCircle,
      ),
      body: child,
    );
  }
}
