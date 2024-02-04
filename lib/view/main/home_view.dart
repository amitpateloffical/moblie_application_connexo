import 'package:connexo/res/assets_res.dart';
import 'package:connexo/widgets/app_empty_widget.dart';
import 'package:connexo/widgets/image_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Records'),
        actions: const [
          CircleAvatar(
            foregroundImage: AssetImage(AssetsRes.DUMMY_PROFILE),
            backgroundColor: Colors.red,
          )
        ],
      ),
      body: const AppEmptyWidget(),
    );
  }
}
