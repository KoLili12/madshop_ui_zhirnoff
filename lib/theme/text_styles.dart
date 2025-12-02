import 'package:flutter/material.dart';
import 'app_colors.dart';

/// Текстовые стили приложения MadShop
class AppTextStyles {
  // Заголовки
  static const TextStyle title = TextStyle(
    fontFamily: 'Raleway',
    fontSize: 50,
    fontWeight: FontWeight.w700,
    height: 1.08, // 54px / 50px
    letterSpacing: -0.5,
    color: AppColors.textPrimary,
  );

  // Поля ввода (hint текст)
  static const TextStyle inputHint = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4,
    letterSpacing: 0,
    color: AppColors.textSecondary,
  );

  // Поля ввода (вводимый текст)
  static const TextStyle inputText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );

  // Текст кнопки
  static const TextStyle button = TextStyle(
    fontFamily: 'NunitoSans',
    fontSize: 22,
    fontWeight: FontWeight.w300,
    height: 1.41, // 31px / 22px
    letterSpacing: 0,
    color: AppColors.buttonText,
  );

  static const TextStyle buttonCancel = TextStyle(
    fontFamily: 'NunitoSans',
    fontSize: 15,
    fontWeight: FontWeight.w300,
    height: 1.41, // 31px / 22px
    letterSpacing: 0,
    color: AppColors.badgeText,
  );

  static const TextStyle someText = TextStyle(
    fontFamily: 'NunitoSans',
    fontSize: 19,
    fontWeight: FontWeight.w300,
    height: 1.41, // 31px / 22px
    letterSpacing: 0,
    color: AppColors.badgeText,
  );

  static const TextStyle textInProductForDesc = TextStyle(
    fontFamily: 'NunitoSans-400',
    fontSize: 12,
    fontWeight: FontWeight.w700,
    height: 1.41, // 31px / 22px
    letterSpacing: 0,
    color: AppColors.badgeText,
  );


  // Дополнительные стили (могут понадобиться)
  static const TextStyle headline = TextStyle(
    fontFamily: 'Raleway',
    fontSize: 28,
    fontWeight: FontWeight.w700,
    height: 1.2,
    color: AppColors.textPrimary,
  );

  static const TextStyle textInProductForPrice = TextStyle(
    fontFamily: 'Raleway',
    fontSize: 17,
    fontWeight: FontWeight.w700,
    height: 1.2,
    color: AppColors.textPrimary,
  );

  static const TextStyle textInSearchBarShopScreen = TextStyle(
    fontFamily: 'Raleway-Regular',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.2,
    color: AppColors.primary,
  );

  static const TextStyle body = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodySecondary = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.4,
    color: AppColors.textSecondary,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.4,
    color: AppColors.textSecondary,
  );

  static const TextStyle price = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.4,
    color: AppColors.price,
  );
}