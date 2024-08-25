import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:crowdapp/utils/colors.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:iconsax/iconsax.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {

  final String title;
  final Color textColor;

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  const AppBarWidget({
    super.key,
    required this.title,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: GoogleFonts.getFont('Poppins',
          color: textColor,
          fontWeight: FontWeight.w500,
          fontSize: 25.0,
        ),
      ),
      toolbarHeight: 60,
      forceMaterialTransparency: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Iconsax.search_favorite,
            color: AppColors.grey800,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Iconsax.logout,
            color: AppColors.grey800,
          ),
        ),
      ],
    );
  }
}