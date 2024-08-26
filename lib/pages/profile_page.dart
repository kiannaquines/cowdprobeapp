import 'package:flutter/material.dart';
import 'package:crowdapp/utils/colors.dart';
import 'package:crowdapp/widgets/appbar_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadingState();
  }

  Future<void> _loadingState() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const AppBarWidget(title: 'Profile', textColor: AppColors.grey600),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: AppColors.pallete800,
              ),
            )
          : SizedBox(
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
                    ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(75.0)),
                      child: Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.brown.shade300,
                        ),
                        child: Center(
                          child: Text(
                            'KN',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              color: AppColors.backgroundColor,
                              fontSize: 50.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
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
                        fontWeight: FontWeight.w600,
                        color: AppColors.grey600,
                      ),
                    ),
                    Text(
                      '@kjgnaquines',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: AppColors.grey800,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.backgroundColor,
                        overlayColor: AppColors.pallete100,
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
