import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/text_styles.dart';
import 'login_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          // Фоновые изображения (фиксированные)
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/top_Image_create_account.png',
              width: 250,
              height: 215,
              fit: BoxFit.contain, // масштабирует, сохраняя пропорции
              alignment:
                  Alignment.topLeft, // выравнивание по левому верхнему углу
            ),
          ),
          // Синяя фигура справа
          Positioned(
            top: 50,
            right: 0,
            child: Image.asset(
              'assets/images/trailing_Image_create_account.png',
              width: 244,
              height: 267,
              fit: BoxFit.contain, // масштабирует, сохраняя пропорции
              alignment:
                  Alignment.topRight, // выравнивание по правому верхнему углу
            ),
          ),

          // Контент
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Заголовок
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 122),
                  child: Text('Create\nAccount', style: AppTextStyles.title),
                ),

                const SizedBox(height: 180),

                // Форма
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      // Email
                      _buildTextField(hintText: 'Email'),
                      const SizedBox(height: 16),

                      // Password
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
                      const SizedBox(height: 16),

                      // Phone number
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.textField,
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 20),
                            // Флаг России
                            Image.asset(
                              'assets/images/ru_flag.png',
                              height: 17,
                              width: 23,
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              width: 1,
                              height: 24,
                              color: AppColors.textPrimary,
                            ),
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.phone,
                                style: AppTextStyles.inputText,
                                decoration: InputDecoration(
                                  hintText: 'Your number',
                                  hintStyle: AppTextStyles.inputHint,
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),

                      // Done button
                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.buttonPrimary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            elevation: 0,
                          ),
                          child: Text('Done', style: AppTextStyles.button),
                        ),
                      ),
                    ],
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
