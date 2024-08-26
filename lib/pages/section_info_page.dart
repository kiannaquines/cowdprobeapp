import 'package:crowdapp/utils/colors.dart';
import 'package:crowdapp/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class SectionInfoPage extends StatefulWidget {
  const SectionInfoPage({super.key});

  @override
  State<SectionInfoPage> createState() => _SectionInfoPageState();
}

class _SectionInfoPageState extends State<SectionInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Reference Section',
        centerTitle: true,
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
        ],
      ),
      body: const Center(
        child: Text(
          'Section Info Page',
        ),
      ),
    );
  }
}
