import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  Color get primaryColor => Theme.of(this).colorScheme.primary;
  Color get secondaryColor => Theme.of(this).colorScheme.secondary;
  Color get tertiaryColor => Theme.of(this).colorScheme.tertiary;
  Color get errorColor => Theme.of(this).colorScheme.error;
  Color get successColor => Theme.of(this).colorScheme.primaryContainer;
  Color get otherYellow => const Color(0xFFfcf745);
  Color get otherGreen => const Color(0xFF00b050);
  Color get blackColor => const Color(0xFF0D0F17);
  Color get appBackgroundColor => const Color(0xFF333333);
  Color get textColor => const Color(0xFF333333);
  Color get textColor2 => const Color(0xFF555555);
  Color get strokeColor => const Color(0xFFD3D3D3);
  Color get greyColor => const Color(0xFFb6b5d1);
  Color get lightGreyColor => const Color(0xFFF2F2F7);

  TextTheme get textTheme => Theme.of(this).textTheme;
}
