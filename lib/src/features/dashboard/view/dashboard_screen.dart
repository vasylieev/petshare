import 'package:flutter/material.dart';
import 'package:petshare/src/features/dashboard/widgets/app_navigation_bar.dart';
import 'package:petshare/src/features/home/view/home_screen.dart';
import 'package:petshare/src/features/my_profile/view/my_profile_screen.dart';
import 'package:petshare/src/features/favorites/view/favorites_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  final _pages = const [
    HomeScreen(),
    FavoritesScreen(),
    MyProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: Builder(
        builder: (_) => _pages[_currentIndex]
      )
    );
  }
}
