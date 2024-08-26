import 'package:flutter/material.dart';
import 'package:crowdapp/widgets/export_widgets.dart';

import 'package:crowdapp/pages/recent_section_page.dart';
import 'package:crowdapp/pages/navigation_page.dart';
import 'package:crowdapp/pages/sections_page.dart';
import 'package:crowdapp/pages/profile_page.dart';

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
        bodyWidget = const NavigationPage();
      case 3:
        bodyWidget = const ProfilePage();
      default:
        bodyWidget = const RecentSectionPage();
    }

    return Scaffold(
      body: bodyWidget,
      bottomNavigationBar: BottomNavigationWidget(
        selectedIndex: selectedIndex,
        selectedIndexFunc: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
