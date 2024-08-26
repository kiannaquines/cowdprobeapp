import 'package:crowdapp/utils/colors.dart';
import 'package:crowdapp/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Navigation',
        centerTitle: false,
        textColor: AppColors.grey800,
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Profile Settings');
            },
            icon: const Icon(
              Feather.settings,
              size: 20.0,
            ),
          ),
          IconButton(
            onPressed: () {
              debugPrint('Logout Settings');
            },
            icon: const Icon(
              Feather.log_out,
              size: 20.0,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Navigation Page',
          style: GoogleFonts.getFont('Poppins'),
        ),
      ),
    );
  }
}
