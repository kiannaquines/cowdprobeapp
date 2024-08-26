import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:crowdapp/utils/colors.dart';

class BottomNavigationWidget extends StatefulWidget {
  
  final int selectedIndex;
  final Function(int) selectedIndexFunc;

  const BottomNavigationWidget({
    super.key,
    required this.selectedIndex,
    required this.selectedIndexFunc,
  });

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: widget.selectedIndex,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      shadowColor: AppColors.textDark,
      indicatorColor: AppColors.pallete50,
      backgroundColor: AppColors.backgroundColor,
      onDestinationSelected: (int index) {
        widget.selectedIndexFunc(index);
      },
      destinations: const [
        NavigationDestination(
          icon: Icon(
            Iconsax.home,
            size: 25.0,
          ),
          selectedIcon: Icon(
            Iconsax.home,
            size: 25.0,
            color: AppColors.pallete700,
          ),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(
            Iconsax.archive,
            size: 25.0,
          ),
          selectedIcon: Icon(
            Iconsax.archive,
            size: 25.0,
            color: AppColors.pallete700,
          ),
          label: 'Sections',
        ),
        NavigationDestination(
          icon: Icon(
            Iconsax.map,
            size: 25.0,
          ),
          selectedIcon: Icon(
            Iconsax.map,
            size: 25.0,
            color: AppColors.pallete700,
          ),
          label: 'Navigation',
        ),
        NavigationDestination(
          icon: Icon(
            Iconsax.user,
            size: 25.0,
          ),
          selectedIcon: Icon(
            Iconsax.user,
            size: 25.0,
            color: AppColors.pallete700,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
