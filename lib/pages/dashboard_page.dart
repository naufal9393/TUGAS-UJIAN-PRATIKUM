import 'package:flutter/material.dart';

import 'about_page.dart';
import 'counter_page.dart';
import 'dynamic_list_page.dart';
import 'grid_view_page.dart';
import 'simple_navigation_page.dart';
import 'user_input_page.dart';
import 'widget_bertingkat_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});
  static const routeName = '/';

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<String> buttonLabels = [
    'Counter',
    'Widget Bertingkat',
    'User Input Example',
    'Dynamic List Example',
    'Navigasi Sederhana',
    'Grid View',
    'Tentang Saya',
  ];

  final List<String> routes = [
    CounterPage.routeName,
    WidgetBertingkatPage.routeName,
    UserInputPage.routeName,
    DynamicListPage.routeName,
    SimpleNavigationPage.routeName,
    GridViewPage.routeName,
    AboutPage.routeName,
  ];

  final List<bool> buttonPressed = List<bool>.filled(7, false);

  void navigateToProject(int index) {
    setState(() {
      buttonPressed[index] = true;
    });
    Navigator.pushNamed(context, routes[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyPorto'),
        centerTitle: true,
        backgroundColor: const Color(0xFF3B5BA5),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFF2A2E3F),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.35),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'MyPorto',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 18),
                const Text(
                  'Cek hasil karyaku disini:',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 16),
                Column(
                  children: List.generate(buttonLabels.length, (index) {
                    final isSelected = buttonPressed[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isSelected ? const Color(0xFF7D8CED) : const Color(0xFFD9D9D9),
                          foregroundColor: isSelected ? Colors.white : Colors.black87,
                          minimumSize: const Size.fromHeight(52),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          elevation: 0,
                        ),
                        onPressed: () => navigateToProject(index),
                        child: Text(
                          buttonLabels[index],
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
