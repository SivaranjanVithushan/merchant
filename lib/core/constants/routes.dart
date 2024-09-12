import 'package:flutter/material.dart';
import 'package:merchant/module/auth/loading_page.dart';
import 'package:merchant/module/auth/login_screen.dart';
import 'package:merchant/module/dashboard/dashboard_screen.dart';
import 'package:merchant/module/dashboard/status_statistics_screen.dart';

import '../../module/auth/forgot_password.dart';

final routes = {
  '/': (BuildContext context) => const LoadingPage(),
  '/login': (BuildContext context) => const LoginScreen(),
  '/forgot-password': (BuildContext context) => const ForgotPassword(),
  '/dashboard': (BuildContext context) => const DashboardScreen(),
  '/status-statistics': (BuildContext context) =>
      const StatusStatisticsScreen(),
};
