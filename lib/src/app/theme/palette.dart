import 'dart:ui';

class Palette {
  static const primaryColor = Color(0xff6cd963);
  static const white = Color(0xffffffff);
  static const black = Color(0xff000000);

  static const black700 = Color(0xff37474F);
  static const black800 = Color(0xff181818);

  // Example shades and tints for the primary color
  static const primaryColorShade50 = Color(0xff52EBD9); // Lightest
  static const primaryColorShade100 = Color(0xff33D1F4); // Lighter
  static const primaryColorShade200 = Color(0xff6DE0F2); // Light
  static const primaryColorShade300 = Color(0xff6DE0F2); // Normal
  static const primaryColorShade400 = Color(0xff6DE0F2); // Dark
  static const primaryColorShade500 = primaryColor; // Base
  static const primaryColorShade600 = Color(0xff33D1F4); // Darker
  static const primaryColorShade700 = Color(0xff52EBD9); // Even Darker
  static const primaryColorShade800 = Color(0xff1BD5A3); // Quite Dark
  static const primaryColorShade900 = Color(0xff1BD5A3); // Darkest

  // Example darker and lighter variations for the primary color
  static const primaryColorDarker = Color(0xff33D1F4);
  static const primaryColorLighter = Color(0xff52EBD9);
}