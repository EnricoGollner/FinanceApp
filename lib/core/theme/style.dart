import 'package:flutter/material.dart';
import 'package:ifinnance/core/theme/colors.dart';

class Styles {
  static ThemeData get material3Theme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.dark(
        surface: backgroundCOlor
      ),
    );
  }
}