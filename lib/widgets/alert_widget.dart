import 'package:flutter/material.dart';
import 'package:crowdapp/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:iconsax/iconsax.dart';

class AletWidget extends StatelessWidget {
  const AletWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 70.0,
        decoration: const BoxDecoration(
          color: AppColors.pallete50,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Iconsax.info_circle,
                color: AppColors.pallete700,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                'Please allow the app to access your\ndevice to follow your recent activity.',
                style: GoogleFonts.getFont(
                  'Poppins',
                  color: AppColors.grey800,
                  fontSize: 13.0,
                ),
                maxLines: 2,
                softWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}