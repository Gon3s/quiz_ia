library app_theme;

import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_styles.dart';
import '../../constants/app_values.dart';

class AppThemes {
  AppThemes._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: AppStyles.fontFamily,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.green,
      accentColor: Colors.yellow,
      cardColor: Colors.green,
      backgroundColor: Colors.white24,
      brightness: Brightness.light,
    ),

    //! App Bar
    appBarTheme: const AppBarTheme(
      elevation: AppValues.appBarElevation,
    ),

    //! Bottom Navigation Bar
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: AppValues.bottomNavBarElevation,
      enableFeedback: true,
      type: AppValues.bottomNavBarType,
      selectedLabelStyle: AppStyles.bottomNavBarSelectedItemTextStyle,
      unselectedLabelStyle: AppStyles.bottomNavBarUnselectedItemTextStyle,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: AppStyles.fontFamily,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.darkBlue,
      brightness: Brightness.dark,
      background: AppColors.veryDarkBlue,
    ),
    scaffoldBackgroundColor: AppColors.darkBlue,

    //! App Bar
    appBarTheme: const AppBarTheme(
      elevation: AppValues.appBarElevation,
      color: Colors.transparent,
    ),

    //! Input Decoration
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(AppValues.defaultRadius),
        ),
        borderSide: BorderSide(
          color: AppColors.darkBlue,
          width: 2.0,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(AppValues.defaultRadius),
        ),
        borderSide: BorderSide(
          color: AppColors.darkBlue,
          width: 3.0,
        ),
      ),
    ),

    //! Bottom Navigation Bar
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: AppValues.bottomNavBarElevation,
      enableFeedback: true,
      type: AppValues.bottomNavBarType,
      selectedLabelStyle: AppStyles.bottomNavBarSelectedItemTextStyle,
      unselectedLabelStyle: AppStyles.bottomNavBarUnselectedItemTextStyle,
    ),
  );
}
