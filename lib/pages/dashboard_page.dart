import 'package:flutter/material.dart';
import 'package:training_app/pages/dashoard_navigation_pages/exercices_page.dart';
import 'package:training_app/pages/dashoard_navigation_pages/home_page.dart';
import 'package:training_app/pages/dashoard_navigation_pages/profile_page.dart';
import 'package:training_app/pages/dashoard_navigation_pages/training_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DashobardNavigation();
  }
}

class DashobardNavigation extends StatefulWidget {
  const DashobardNavigation({super.key});

  @override
  State<DashobardNavigation> createState() => _DashobardNavigationState();
}

class _DashobardNavigationState extends State<DashobardNavigation> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    BottomNavigationBarThemeData theme = Theme.of(
      context,
    ).bottomNavigationBarTheme;

    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Color(0xFF121A2B), width: 1)),
        ),
        child: NavigationBar(
          onDestinationSelected: (index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          backgroundColor: theme.backgroundColor,
          labelTextStyle: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return TextStyle(color: theme.selectedItemColor);
            }
            return TextStyle(color: theme.unselectedItemColor);
          }),
          selectedIndex: currentPageIndex,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home, color: theme.unselectedItemColor),
              label: "Home",
              selectedIcon: Icon(Icons.home_outlined, color: Colors.white),
            ),
            NavigationDestination(
              icon: Icon(
                Icons.fitness_center,
                color: theme.unselectedItemColor,
              ),
              selectedIcon: Icon(
                Icons.fitness_center_outlined,
                color: Colors.white,
              ),
              label: "Treinos",
            ),
            NavigationDestination(
              icon: Icon(Icons.receipt, color: theme.unselectedItemColor),
              label: "Exercícios",
              selectedIcon: Icon(Icons.receipt_outlined, color: Colors.white),
            ),
            NavigationDestination(
              icon: Icon(Icons.person, color: theme.unselectedItemColor),
              label: "Perfil",
              selectedIcon: Icon(Icons.person_outline, color: Colors.white),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: [
          HomePage(),
          TrainingPage(),
          ExerciciesPage(),
          ProfilePage(),
        ][currentPageIndex],
      ),
    );
  }
}
