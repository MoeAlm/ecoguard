import 'package:ecoguard/src/app/theme/palette.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData lightTheme(BuildContext context) {
    final theme = Theme.of(context);
    final textScale = MediaQuery.textScalerOf(context);
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: 'Cairo',
      primaryColor: Palette.primaryColor,
      primarySwatch: MaterialColor(Palette.primaryColorShade500.value, const {
        100: Palette.primaryColorShade100,
        200: Palette.primaryColorShade200,
        300: Palette.primaryColorShade300,
        400: Palette.primaryColorShade400,
        500: Palette.primaryColorShade500,
        600: Palette.primaryColorShade600,
        700: Palette.primaryColorShade700,
        800: Palette.primaryColorShade800,
        900: Palette.primaryColorShade900,
      }),
      scaffoldBackgroundColor: Palette.black800,
      appBarTheme: AppBarTheme(
          elevation: 0.0,
          centerTitle: true,
          color: Palette.black700,
          titleTextStyle: TextStyle(
            fontSize: textScale.scale(25),
            fontFamily: 'Product',
            color: Palette.primaryColorShade500,
          ),
          actionsIconTheme: const IconThemeData(size: 33),
          foregroundColor: Palette.primaryColor),
      textTheme: theme.primaryTextTheme
          .copyWith(
            labelLarge: theme.primaryTextTheme.labelLarge?.copyWith(
              color: Palette.black,
              fontSize: textScale.scale(16),
              fontWeight: FontWeight.bold,
            ),
          )
          .apply(displayColor: Palette.black, fontFamily: 'Cairo'),
      popupMenuTheme: const PopupMenuThemeData(iconColor: Palette.black700),
      iconTheme: const IconThemeData(color: Palette.white, size: 30),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Palette.primaryColorShade500,
        foregroundColor: Palette.white,
      ),
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: Palette.white),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Palette.primaryColorShade500,
        ),
      ),
      searchBarTheme:
          const SearchBarThemeData(elevation: MaterialStatePropertyAll(0.0)),
      dialogTheme: const DialogTheme(
          backgroundColor: Palette.white,
          titleTextStyle: TextStyle(
              color: Palette.primaryColor,
              fontSize: 32,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold),
          contentTextStyle: TextStyle(
              color: Palette.black700, fontFamily: 'Cairo', fontSize: 16)),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Palette.primaryColor,
        ),
      ),
    );
  }
}
