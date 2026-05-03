import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,

    // 🎨 Cores base
    scaffoldBackgroundColor: const Color(0xFF0B1220),
    primaryColor: const Color(0xFF2F6BFF),

    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF2F6BFF),
      secondary: Color(0xFF3B82F6),
      surface: Color(0xFF121A2B),
      error: Color(0xFFEF4444),
    ),

    // ✍️ Tipografia
    fontFamily: 'Inter',

    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w700,
        color: Color(0xFFE5E7EB),
      ),
      headlineMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE5E7EB),
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Color(0xFF9CA3AF),
      ),
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE5E7EB),
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xFFE5E7EB),
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFF9CA3AF),
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Color(0xFF6B7280),
      ),
    ),

    // 🧱 AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF0B1220),
      elevation: 0,
      centerTitle: false,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE5E7EB),
      ),
      iconTheme: IconThemeData(color: Color(0xFFE5E7EB)),
    ),

    // 🧩 Cards
    cardTheme: CardThemeData(
      color: const Color(0xFF121A2B),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),

    // 🔘 Botões
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF2F6BFF),
        foregroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),

    // 🔳 Inputs
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      prefixIconColor: Color(0xFF2F6BFF),
      suffixIconColor: Color(0xFF2F6BFF),
      fillColor: const Color(0xFF0F172A),
      hintStyle: const TextStyle(color: Color(0xFF6B7280)),
      labelStyle: const TextStyle(color: Color(0xFF9CA3AF)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF1F2A44)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF1F2A44)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF2F6BFF)),
      ),
    ),

    // 🔘 Floating Action Button
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF2F6BFF),
      foregroundColor: Colors.white,
    ),

    // 📊 Divider
    dividerTheme: const DividerThemeData(
      color: Color(0xFF1F2A44),
      thickness: 1,
    ),

    // 🔄 Switch
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(const Color(0xFF2F6BFF)),
      trackColor: WidgetStateProperty.all(const Color(0xFF1E293B)),
    ),

    // 🔵 Progress indicators
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Color(0xFF2F6BFF),
    ),

    // 🧭 Bottom Navigation
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF0B1220),
      selectedItemColor: Color(0xFF2F6BFF),
      unselectedItemColor: Color(0xFF6B7280),
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
