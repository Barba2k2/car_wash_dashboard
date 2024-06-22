import 'package:flutter/material.dart';

class UiConfig {
  UiConfig._();

  static String get title => 'Car Wash Dashboard App';

  //$ Application Colors
  static const Color primaryColor = Color(0xFF129166);
  static const Color secondaryColor = Color(0xFFfcf900);
  static const Color tertiaryColor = Color(0xFF84cc6d);
  static const Color errorColor = Color(0xFFeb5757);
  static const Color successColor = Color(0xFF00ff85);
  static const Color otherYellow = Color(0xFFfcf745);
  static const Color otherGreen = Color(0xFF00b050);
  static const Color blackColor = Color(0xFF0D0F17);
  static const Color appBackgroundColor = Color(0xFF333333);
  static const Color textColor = Color(0xFF333333);
  static const Color textColor2 = Color(0xFF555555);
  static const Color strokeColor = Color(0xFFD3D3D3);
  static const Color greyColor = Color(0xFFb6b5d1);
  static const Color lightGreyColor = Color(0xFFF2F2F7);

  //$ Application Theme
  static ThemeData get theme => ThemeData(
        colorScheme: const ColorScheme(
          primary: primaryColor,
          secondary: secondaryColor,
          tertiary: tertiaryColor,
          error: errorColor,
          surface: greyColor,
          onPrimary: Colors.white,
          onSecondary: blackColor,
          onError: Colors.white,
          onSurface: blackColor,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: appBackgroundColor,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: textColor),
          bodyMedium: TextStyle(color: textColor2),
          headlineSmall: TextStyle(color: primaryColor),
        ),
        useMaterial3: true,
      );
}
