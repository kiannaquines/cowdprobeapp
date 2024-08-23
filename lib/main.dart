import 'package:crowdapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:crowdapp/pages/home_page.dart';

void main() {
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
        fontFamily: 'Geist',
        scaffoldBackgroundColor: AppColors.backgroundColor,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.backgroundColor,
          elevation: 0.2,
          shadowColor: AppColors.textDark,
        ),
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: WidgetStateProperty.all(
            const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 14.0,
            ),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
