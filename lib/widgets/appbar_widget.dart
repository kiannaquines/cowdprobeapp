import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:crowdapp/utils/colors.dart';
import 'package:icons_flutter/icons_flutter.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color textColor;
  final List<Widget> actions;

  const AppBarWidget({
    super.key,
    required this.title,
    required this.textColor,
    List<Widget>? actions,
  }) : actions = actions ??
            const [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Feather.grid,
                  color: AppColors.grey600,
                ),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Feather.camera,
                  color: AppColors.grey600,
                ),
              ),
            ];

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: GoogleFonts.getFont(
          'Poppins',
          color: textColor,
          fontWeight: FontWeight.w500,
          fontSize: 25.0,
        ),
      ),
      toolbarHeight: 60,
      forceMaterialTransparency: true,
      actions: actions,
    );
  }
}
