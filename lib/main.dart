import 'package:flutter/material.dart';

import 'pages/about_page.dart';
import 'pages/counter_page.dart';
import 'pages/dashboard_page.dart';
import 'pages/dynamic_list_page.dart';
import 'pages/grid_view_page.dart';
import 'pages/simple_navigation_page.dart';
import 'pages/user_input_page.dart';
import 'pages/widget_bertingkat_page.dart';

void main() {
  runApp(const MyPortoApp());
}

class MyPortoApp extends StatelessWidget {
  const MyPortoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyPorto',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        scaffoldBackgroundColor: const Color(0xFF1C1E28),
      ),
      initialRoute: DashboardPage.routeName,
      routes: {
        DashboardPage.routeName: (_) => const DashboardPage(),
        CounterPage.routeName: (_) => const CounterPage(),
        WidgetBertingkatPage.routeName: (_) => const WidgetBertingkatPage(),
        UserInputPage.routeName: (_) => const UserInputPage(),
        DynamicListPage.routeName: (_) => const DynamicListPage(),
        SimpleNavigationPage.routeName: (_) => const SimpleNavigationPage(),
        GridViewPage.routeName: (_) => const GridViewPage(),
        AboutPage.routeName: (_) => const AboutPage(),
      },
    );
  }
}
