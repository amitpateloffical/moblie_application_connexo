import 'package:connexo/routes/app_routes.dart';
import 'package:connexo/view_model/auth_view_model.dart';
import 'package:connexo/view_model/create_record_view_model.dart';
import 'package:connexo/view_model/dashboard_view_midel.dart';
import 'package:connexo/view_model/main_view_model.dart';
import 'package:connexo/widgets/app_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:provider/provider.dart';

import 'helpers/theme_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (BuildContext context) => MainViewModel()),
        ChangeNotifierProvider(
            create: (BuildContext context) => DashboardViewModel()),
        ChangeNotifierProvider(
            create: (BuildContext context) => AuthViewModel()),
        ChangeNotifierProvider(
            create: (BuildContext context) => CreateRecordViewModel())
      ],
      child: GlobalLoaderOverlay(
        useDefaultLoading: false,
        overlayWidgetBuilder: (_) {
          //ignored progress for the moment
          return const AppLoadingWidget();
        },
        child: MaterialApp.router(
          title: 'Connexo',
          theme: ThemeHelper.lightTheme(),
          darkTheme: ThemeHelper.darkTheme(),
          debugShowCheckedModeBanner: false,
          routeInformationProvider: AppRouter.router.routeInformationProvider,
          routeInformationParser: AppRouter.router.routeInformationParser,
          routerDelegate: AppRouter.router.routerDelegate,
        ),
      ),
    );
  }
}
