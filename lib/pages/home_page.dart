import 'package:crowdapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:crowdapp/pages/export_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget bodyWidget;

    switch (selectedIndex) {
      case 0:
        bodyWidget = const RecentSectionPage();
      case 1:
        bodyWidget = const MapPage();
      case 2:
        bodyWidget = const ProfilePage();
      default:
        bodyWidget = const RecentSectionPage();
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Crowd Probe',
          style: TextStyle(
            color: AppColors.lightColor,
            fontWeight: FontWeight.w600,
            fontSize: 25.0
          ),
        ),
        backgroundColor: AppColors.backgroundColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
              color: AppColors.textDark,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_outlined,
              color: AppColors.textDark,
            ),
          ),
        ],
        shadowColor: AppColors.textDark,
      ),
      body: bodyWidget,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        shadowColor: AppColors.textDark,
        indicatorColor: AppColors.alertColor,
        backgroundColor: AppColors.backgroundColor,
        onDestinationSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home_outlined,
              size: 30.0,
            ),
            selectedIcon: Icon(
              Icons.home_filled,
              size: 30.0,
              color: AppColors.primaryColor,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.map_outlined,
              size: 30.0,
            ),
            selectedIcon: Icon(
              Icons.map,
              size: 30.0,
              color: AppColors.primaryColor,
            ),
            label: 'Navigation',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person_outline,
              size: 30.0,
            ),
            selectedIcon: Icon(
              Icons.person,
              size: 30.0,
              color: AppColors.primaryColor,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
