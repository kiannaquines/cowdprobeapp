import 'package:flutter/material.dart';

class SectionInfoPage extends StatelessWidget {
  const SectionInfoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reference Section'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Section Info Page',
        ),
      ),
    );
  }
}
