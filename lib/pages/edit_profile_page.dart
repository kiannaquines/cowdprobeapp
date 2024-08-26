import 'package:flutter/material.dart';
import 'package:crowdapp/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.getFont(
            'Poppins',
            color: AppColors.grey600,
            fontWeight: FontWeight.w500,
            fontSize: 20.0,
          ),
        ),
        leading: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pop();
            },
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: AppColors.grey600,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
        centerTitle: true,
        actions: const [
          Text(
            'Save',
            style: TextStyle(
              color: AppColors.pallete700,
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            width: 10.0,
          )
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              CircleAvatar(
                radius: 60,
                backgroundColor: AppColors.pallete800,
                child: Text(
                  'KN',
                  style: GoogleFonts.getFont(
                    'Poppins',
                    color: AppColors.backgroundColor,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'Kian G. Naquines',
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey600,
                ),
              ),
              Text(
                '@kjgnaquines',
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey800,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditProfilePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.backgroundColor,
                  overlayColor: AppColors.pallete100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                  ),
                ),
                child: Text(
                  'Edit Profile',
                  style: GoogleFonts.getFont(
                    'Poppins',
                    color: AppColors.pallete800,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
