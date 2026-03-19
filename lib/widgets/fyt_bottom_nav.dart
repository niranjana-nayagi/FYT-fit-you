import 'package:flutter/material.dart';
import '../design/app_colors.dart';

enum FytTab { home, profile, settings }

class FytBottomNav extends StatelessWidget {
  final FytTab current;
  final ValueChanged<FytTab> onChanged;

  const FytBottomNav({
    super.key,
    required this.current,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.bgSecondary,
      selectedItemColor: AppColors.textPrimary,
      unselectedItemColor: AppColors.textSub,
      type: BottomNavigationBarType.fixed,
      currentIndex: FytTab.values.indexOf(current),
      onTap: (i) => onChanged(FytTab.values[i]),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.tune_rounded),
          label: 'Settings',
        ),
      ],
    );
  }
}