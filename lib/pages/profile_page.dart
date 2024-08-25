import 'package:flutter/material.dart';
import 'package:crowdapp/utils/colors.dart';
import 'package:crowdapp/widgets/appbar_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Profile', textColor: AppColors.grey600),
      body: const Center(
        child: Text('Profile Page'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.pallete700,
        onPressed: () {},
        child: const Icon(
          Icons.camera_alt_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}