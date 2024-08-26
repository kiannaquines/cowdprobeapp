import 'package:flutter/material.dart';
import 'package:crowdapp/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:crowdapp/widgets/input_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late TextEditingController _emailController;
  late TextEditingController _usernameController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  late TextEditingController _nameController;
  late TextEditingController _lastnameController;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _nameController = TextEditingController();
    _lastnameController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _nameController.dispose();
    _lastnameController.dispose();
    super.dispose();
  }

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
              Navigator.of(context).pop();
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
        toolbarHeight: 50,
        centerTitle: true,
        forceMaterialTransparency: true,
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
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
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
                    Positioned(
                      bottom: 6,
                      right: 6,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        child: Container(
                          color: AppColors.backgroundColor,
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.camera_alt,
                              color: AppColors.pallete700,
                              size: 15.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Personal Information',
                  style: GoogleFonts.getFont(
                    'Poppins',
                    color: AppColors.grey600,
                  ),
                ),
                InputWidget(
                  labelName: 'Username',
                  hintText: 'Enter your username',
                  obscureTextType: false,
                  controller: _usernameController,
                ),
                InputWidget(
                  labelName: 'Name',
                  hintText: 'Enter your name',
                  obscureTextType: false,
                  controller: _nameController,
                ),
                InputWidget(
                  labelName: 'Lastname',
                  hintText: 'Enter your lastname',
                  obscureTextType: false,
                  controller: _lastnameController,
                ),
                InputWidget(
                  labelName: 'Email',
                  hintText: 'Enter your email',
                  obscureTextType: false,
                  controller: _emailController,
                ),
                InputWidget(
                  labelName: 'Password',
                  hintText: 'Enter your password',
                  obscureTextType: true,
                  controller: _passwordController,
                ),
                InputWidget(
                  labelName: 'Confirm Password',
                  hintText: 'Enter your password',
                  obscureTextType: true,
                  controller: _confirmPasswordController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
