import 'package:connexo/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../base/base_view_model.dart';

class MainViewModel extends BaseViewModel {
  changeRoot(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go(AppRouter.home);
        return;
      case 1:
        context.go(AppRouter.dashboard);
        return;
      case 2:
        context.push(AppRouter.addRecord);
        return;
      case 3:
        context.go(AppRouter.analytics);
        return;
      case 4:
        context.go(AppRouter.settings);
        return;
      default:
        context.go(AppRouter.home);
    }
  }
}
