import 'package:flutter/material.dart';

class UiConfig {
  UiConfig._();

  static String get title => 'Cuidapet';

  static ThemeData get theme => ThemeData(
        primaryColor: const Color(0xFFA0CE48),
        primaryColorDark: const Color(0xFF689F38),
        primaryColorLight: const Color(0xFFDDEDC7),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color(0xFF4CAF50)),
      );
}
