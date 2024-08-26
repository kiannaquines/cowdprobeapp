import 'package:flutter/material.dart';
import 'package:crowdapp/utils/colors.dart';
import 'package:crowdapp/widgets/appbar_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:iconsax/iconsax.dart';

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
      appBar: AppBarWidget(
        title: 'Your Profile',
        textColor: AppColors.grey600,
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Profile Settings');
            },
            icon: const Icon(Feather.settings),
          ),
          IconButton(
            onPressed: () {
              debugPrint('Logout Settings');
            },
            icon: const Icon(Feather.log_out),
          ),
        ],
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: AppColors.pallete800,
              ),
            )
          : DefaultTabController(
              length: 2,
              child: SizedBox(
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
                        onPressed: () {},
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
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: TabBar(
                          labelColor: AppColors.pallete800,
                          unselectedLabelColor: AppColors.grey600,
                          indicatorColor: AppColors.pallete800,
                          indicatorSize: TabBarIndicatorSize.tab,
                          overlayColor: WidgetStateProperty.resolveWith<Color?>(
                            (Set<WidgetState> states) {
                              if (states.contains(WidgetState.pressed)) {
                                return AppColors.pallete800
                                    .withOpacity(0.1);
                              }
                              return null;
                            },
                          ),
                          labelStyle: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                          ),
                          tabs: const [
                            Tab(
                              text: 'Likes',
                            ),
                            Tab(
                              text: 'Activities',
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: List.generate(6, (index) {
                                    return Container(
                                      color: AppColors.backgroundColor,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: ListTile(
                                        splashColor: AppColors.pallete100,
                                        leading: const Icon(
                                          Iconsax.clock,
                                          color: AppColors.pallete700,
                                        ),
                                        title: Text(
                                          'Reference Section',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: AppColors.pallete950,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        trailing: const Icon(
                                          Feather.more_vertical,
                                          color: AppColors.pallete800,
                                        ),
                                        subtitle: Text(
                                          'You visited last January 21, 2024',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: AppColors.pallete900,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: List.generate(6, (index) {
                                    return Container(
                                      color: AppColors.backgroundColor,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: ListTile(
                                        splashColor: AppColors.pallete100,
                                        leading: const Icon(
                                          Iconsax.clock,
                                          color: AppColors.pallete700,
                                        ),
                                        title: Text(
                                          'Reference Section',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: AppColors.pallete950,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        trailing: const Icon(
                                          Feather.more_vertical,
                                          color: AppColors.pallete800,
                                        ),
                                        subtitle: Text(
                                          'You visited last January 21, 2024',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: AppColors.pallete900,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
