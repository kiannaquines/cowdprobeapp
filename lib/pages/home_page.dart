import 'package:icons_flutter/icons_flutter.dart';
import 'package:crowdapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:crowdapp/pages/export_pages.dart';
import 'package:google_fonts/google_fonts.dart';

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
        bodyWidget = const SectionsPage();
      case 2:
        bodyWidget = const ProfilePage();
      case 3:
        bodyWidget = const ProfilePage();
      default:
        bodyWidget = const RecentSectionPage();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TaraLibrary',
          style: GoogleFonts.getFont('Lato',
            color: AppColors.pallete700,
            fontWeight: FontWeight.w600,
            fontSize: 25.0,
          ),
        ),
        toolbarHeight: 60,
        forceMaterialTransparency: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Feather.search,
              color: AppColors.grey800,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Feather.log_out,
              color: AppColors.grey800,
            ),
          ),
        ],
      ),
      body: bodyWidget,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        shadowColor: AppColors.textDark,
        indicatorColor: AppColors.pallete50,
        backgroundColor: AppColors.backgroundColor,
        onDestinationSelected: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Feather.home,
              size: 25.0,
            ),
            selectedIcon: Icon(
              Feather.home,
              size: 25.0,
              color: AppColors.pallete700,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              Feather.archive,
              size: 25.0,
            ),
            selectedIcon: Icon(
              Feather.archive,
              size: 25.0,
              color: AppColors.pallete700,
            ),
            label: 'Sections',
          ),
          NavigationDestination(
            icon: Icon(
              Feather.map,
              size: 25.0,
            ),
            selectedIcon: Icon(
              Feather.map,
              size: 25.0,
              color: AppColors.pallete700,
            ),
            label: 'Navigation',
          ),
          NavigationDestination(
            icon: Icon(
              Feather.user,
              size: 25.0,
            ),
            selectedIcon: Icon(
              Feather.user,
              size: 25.0,
              color: AppColors.pallete700,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
