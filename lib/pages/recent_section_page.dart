import 'package:crowdapp/utils/colors.dart';
import 'package:crowdapp/widgets/export_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:iconsax/iconsax.dart';

class RecentSectionPage extends StatelessWidget {
  const RecentSectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent Activities',
              style: GoogleFonts.getFont(
                'Lato',
                fontSize: 23,
                fontWeight: FontWeight.w600,
                color: AppColors.grey800,
              ),
            ),
            Text(
              "Your activity in the app",
              style: GoogleFonts.getFont(
                'Lato',
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const AletWidget(),
            const SizedBox(
              height: 5.0,
            ),
            Expanded(
              child: ListView.builder(
                clipBehavior: Clip.none,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 4.0),
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      border: Border(
                        left: BorderSide(
                          color: AppColors.pallete600,
                          width: 5.0,
                        ),
                      ),
                    ),
                    child: ListTile(
                      tileColor: AppColors.pallete50,
                      leading: const Icon(
                        Iconsax.clock,
                        color: AppColors.pallete700,
                      ),
                      title: Text(
                        'Reference Section',
                        style: GoogleFonts.getFont(
                          'Lato',
                          color: AppColors.pallete950,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          debugPrint('hey');
                        },
                        icon: const Icon(
                          Feather.more_vertical,
                          color: AppColors.pallete800,
                        ),
                      ),
                      subtitle: Text(
                        'Visited last January 21, 2024',
                        style: GoogleFonts.getFont(
                          'Lato',
                          color: AppColors.pallete900,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
