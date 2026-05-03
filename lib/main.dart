import 'package:flutter/material.dart';
import 'package:training_app/pages/dashboard_page.dart';
import 'package:training_app/pages/login_page.dart';
import 'package:training_app/utils/app_theme.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      routes: {
        '/login': (context) => LoginPage(),
        '/dashboard': (context) => DashboardPage(),
      },
      initialRoute: '/login',
    );
  }
}
