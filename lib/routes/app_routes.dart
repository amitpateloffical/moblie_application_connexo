import 'package:connexo/view/add_record/add_record_view.dart';
import 'package:connexo/view/add_record/create_record_view.dart';
import 'package:connexo/view/auth/login_view.dart';
import 'package:connexo/view/main/analytics_view.dart';
import 'package:connexo/view/main/dashboard_view.dart';
import 'package:connexo/view/main/main_view.dart';
import 'package:connexo/view/main/settings_view.dart';
import 'package:connexo/view/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../view/cms/about_us_view.dart';
import '../view/cms/contact_us_view.dart';
import '../view/cms/privacy_policy_view.dart';
import '../view/cms/terms_of_use_view.dart';
import '../view/error/not_found_view.dart';
import '../view/main/home_view.dart';
import 'navigation_service.dart';

class AppRouter {
  // all the route paths. So that we can access them easily  across the app

  static GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();
  static GlobalKey<NavigatorState> shellNavigatorKey =
      GlobalKey<NavigatorState>();

  static const String root = '/';

  static const String login = '/login';
  static const String home = '/home';
  static const String dashboard = '/dashboard';
  static const String analytics = '/analytics';
  static const String settings = '/settings';
  static const String addRecord = '/add_record';
  static const String createRecord = '/create_record';

  static const String aboutUs = '/about_us';
  static const String contactUs = '/contact_us';
  static const String privacyPolicy = '/privacy_policy';
  static const String termsOfUse = '/terms_of_use';

  static Widget _errorWidget(BuildContext context, GoRouterState state) =>
      const NotFoundView();

  /// use this in [MaterialApp.router]
  static final GoRouter _router = GoRouter(
    initialLocation: '/',
    navigatorKey: NavigationService.navigatorKey,
    routes: [
      GoRoute(
        path: root,
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: SplashView(),
          );
        },
      ),
      ShellRoute(
        navigatorKey: shellNavigatorKey,
        pageBuilder: (context, state, child) {
          return NoTransitionPage(
              child: MainView(
            location: state.fullPath ?? '',
            child: child,
          ));
        },
        routes: [
          GoRoute(
            path: home,
            parentNavigatorKey: shellNavigatorKey,
            pageBuilder: (context, state) {
              return const NoTransitionPage(
                child: HomeView(),
              );
            },
          ),
          GoRoute(
              parentNavigatorKey: shellNavigatorKey,
              path: dashboard,
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                  child: DashboardView(),
                );
              }),
          GoRoute(
              parentNavigatorKey: shellNavigatorKey,
              path: analytics,
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                  child: AnalyticsView(),
                );
              }),
          GoRoute(
              parentNavigatorKey: shellNavigatorKey,
              path: settings,
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                  child: SettingsView(),
                );
              }),
        ],
      ),
      GoRoute(
        path: login,
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: LoginView(),
          );
        },
      ),
      GoRoute(
        path: addRecord,
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: AddRecordView(),
          );
        },
      ),
      GoRoute(
        path: createRecord,
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: CreateRecordView(),
          );
        },
      ),
      GoRoute(
        path: aboutUs,
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: AboutUsView(),
          );
        },
      ),
      GoRoute(
        path: contactUs,
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: ContactUsView(),
          );
        },
      ),
      GoRoute(
        path: privacyPolicy,
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: PrivacyPolicyView(),
          );
        },
      ),
      GoRoute(
        path: termsOfUse,
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: TermsOfUseView(),
          );
        },
      ),
    ],
    errorBuilder: _errorWidget,
  );

  static GoRouter get router => _router;
}
