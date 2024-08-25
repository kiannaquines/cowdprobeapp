import 'package:crowdapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:crowdapp/widgets/export_widgets.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadingState();
  }

  Future<void> _loadingState() async {
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Navigation',
        textColor: AppColors.grey600,
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: AppColors.pallete800,
              ),
            )
          : const Center(
              child: Text('Map Page'),
            ),
    );
  }
}
