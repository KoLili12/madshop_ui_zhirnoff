import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/text_styles.dart';
import 'password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterAlignment: AlignmentDirectional.bottomEnd,
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          // Серый элемент сверху (облако)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/top_gray_image_login.png',
              width: 310,
              height: 330,
              fit: BoxFit.contain,
              alignment: Alignment.topLeft,
            ),
          ),

          // Синий круг сверху слева
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/top_blue_image_login.png',
              width: 301,
              height: 275,
              fit: BoxFit.contain,
              alignment: Alignment.topLeft,
            ),
          ),

          // Синий элемент справа (в середине)
          Positioned(
            top: 280,
            right: 0,
            child: Image.asset(
              'assets/images/trailing_image_login.png',
              width: 140,
              height: 140,
              fit: BoxFit.contain,
              alignment: Alignment.topRight,
            ),
          ),

          // Синий элемент слева снизу
          Positioned(
            bottom: 0,
            left: 150,
            child: Image.asset(
              'assets/images/bottom_image_login.png',
              width: 290,
              height: 390,
              fit: BoxFit.contain,
              alignment: Alignment.bottomRight,
            ),
          ),

          // Контент
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 438, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Login', style: AppTextStyles.title),
                const SizedBox(height: 4),

                Row(
                  children: [
                    Text(
                      'Good to see you back! ',
                      style: AppTextStyles.someText,
                    ),
                    Image.asset(
                      'assets/images/heart.png',
                      width: 16,
                      height: 16,
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                // Email
                _buildTextField(hintText: 'Email'),

                const SizedBox(height: 37),

                // Login button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PasswordScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 0,
                    ),
                    child: Text('LogIn', style: AppTextStyles.button),
                  ),
                ),

                const SizedBox(height: 20),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel', style: AppTextStyles.buttonCancel),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required String hintText,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.textField,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        obscureText: obscureText,
        style: AppTextStyles.inputText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyles.inputHint,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
