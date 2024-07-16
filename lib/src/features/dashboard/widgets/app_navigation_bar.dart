import 'package:flutter/material.dart';
import 'package:petshare/src/core/resources/app_colors.dart';
import 'package:petshare/src/core/resources/app_icons.dart';
import 'package:petshare/src/core/resources/app_text_styles.dart';
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
      unselectedItemColor: AppColors.grey,
      selectedItemColor: AppColors.accent,
      selectedFontSize: 12,
      selectedLabelStyle: AppTextStyles.size12MSemiBoldDarkGrey,
      unselectedLabelStyle: AppTextStyles.size12MediumAccent,
      backgroundColor: AppColors.white,
      items: const [
        BottomNavigationBarItem(
          icon: _BarItem(icon: AppIcons.cat),
          activeIcon: _ActiveBarItem(icon: AppIcons.cat),
          label: 'Pets',
        ),
        BottomNavigationBarItem(
          icon: _BarItem(icon: AppIcons.search),
          activeIcon: _ActiveBarItem(icon: AppIcons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: _BarItem(icon: AppIcons.userRound),
          activeIcon: _ActiveBarItem(icon: AppIcons.userRound),
          label: 'Me',
        ),
      ],
    );
  }
}

class _BarItem extends StatelessWidget {
  const _BarItem({required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return AppIcon(
      icon,
      color: AppColors.grey,
    );
  }
}

class _ActiveBarItem extends StatelessWidget {
  const _ActiveBarItem({required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return AppIcon(
      icon,
      color: AppColors.accent,
    );
  }
}
