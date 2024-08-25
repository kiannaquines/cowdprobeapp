import 'package:crowdapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:crowdapp/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.grey100,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.backgroundColor,
        ),
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: WidgetStateProperty.all(
            GoogleFonts.getFont(
              'Poppins',
              color: AppColors.grey800,
              fontWeight: FontWeight.w400,
              fontSize: 13.0,
            ),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
