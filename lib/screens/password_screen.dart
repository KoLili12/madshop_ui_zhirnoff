import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/text_styles.dart';
import 'tabbar_screen.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

          // Контент
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 282, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Hello!',
                  style: AppTextStyles.headline,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 30),

                Text(
                  'Type your password',
                  style: AppTextStyles.someText,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 130),

                // Password field
                _buildTextField(
                  hintText: 'Password',
                  obscureText: _obscurePassword,
                  suffixIcon: Transform.scale(
                    scale: 0.6, // Уменьшает на 40%
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      child: Image.asset('assets/images/eye.png'),
                    ),
                  ),
                ),

                const SizedBox(height: 82),

                // Start button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TabBarScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 0,
                    ),
                    child: Text('Start', style: AppTextStyles.button),
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
