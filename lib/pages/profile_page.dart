import 'package:flutter/material.dart';
import 'package:crowdapp/utils/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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