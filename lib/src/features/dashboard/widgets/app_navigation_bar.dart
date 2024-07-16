import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_icons.dart';
import 'package:petshare/src/core/utils/app_icon.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({
    required this.onTap,
    super.key,
  });

  final void Function(int) onTap;

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
          widget.onTap(_currentIndex);
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: AppIcon(AppIcons.paw),
          label: 'Paw',
        ),
        BottomNavigationBarItem(
          icon: AppIcon(AppIcons.paw),
          label: 'Paw',
        ),
      ],
    );
  }
}
