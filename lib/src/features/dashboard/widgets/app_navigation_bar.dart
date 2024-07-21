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
      selectedLabelStyle: AppTextStyles.size12SemiBoldGrey,
      unselectedLabelStyle: AppTextStyles.size12MediumAccent,
      backgroundColor: AppColors.white,
      items: const [
        BottomNavigationBarItem(
          icon: _BarIcon(icon: AppIcons.cat),
          activeIcon: _ActiveBarIcon(icon: AppIcons.cat),
          label: 'Pets',
        ),
        BottomNavigationBarItem(
          icon: _BarIcon(icon: AppIcons.heart),
          activeIcon: _ActiveBarIcon(icon: AppIcons.heart),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: _BarIcon(icon: AppIcons.userRound),
          activeIcon: _ActiveBarIcon(icon: AppIcons.userRound),
          label: 'Me',
        ),
      ],
    );
  }
}

class _BarIcon extends StatelessWidget {
  const _BarIcon({required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return AppIcon(
      icon,
      color: AppColors.grey,
    );
  }
}

class _ActiveBarIcon extends StatelessWidget {
  const _ActiveBarIcon({required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return AppIcon(
      icon,
      color: AppColors.accent,
    );
  }
}
