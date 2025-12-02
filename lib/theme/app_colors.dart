import 'package:flutter/material.dart';

/// Цветовая схема приложения MadShop
class AppColors {
  // Основные цвета
  static const Color textField = Color(0xFFF8F8F8); // Цвет фона текстового поля
  static const Color primary = Color(0xFF0D6EFD);        // Синий для кнопок и активных элементов
  static const Color secondary = Color(0xFFE3F2FD);      // Светло-голубой фон поиска
  static const Color background = Color(0xFFFFFFFF);     // Белый фон
  static const Color cardBackground = Color(0xFFFFFFFF); // Белый фон карточек
  
  // Цвета для состояний
  static const Color favorite = Color(0xFFFF3B30);       // Красный для избранного
  static const Color favoriteInactive = Color(0xFFFFFFFF); // Белый контур неактивного
  static const Color cartIcon = Color(0xFFFFFFFF);       // Белая иконка корзины
  
  // Текст
  static const Color textPrimary = Color(0xFF000000);    // Черный для основного текста
  static const Color textSecondary = Color(0xFFD2D2D2);  // Серый для второстепенного текста
  static const Color price = Color(0xFF000000);          // Черный для цены
  
  // Бейджи и акценты
  static const Color badge = Color(0xFFE8E8E8);          // Серый для бейджа количества
  static const Color badgeText = Color(0xFF000000);      // Черный текст на бейдже
  
  // Границы
  static const Color border = Color(0xFFE0E0E0);         // Серая граница
  
  // Кнопки
  static const Color buttonPrimary = Color(0xFF004CFF);  // Синяя кнопка
  static const Color buttonText = Color(0xFFFFFFFF);     // Белый текст кнопки

  static const Color backgroundCartBar = Color(0xFFF5F5F5);
}