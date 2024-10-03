import 'package:flutter/material.dart';
import 'package:ifinnance/core/app_router.dart';
import 'package:ifinnance/core/theme/style.dart';
import 'package:ifinnance/main/screens/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Styles.material3Theme,
      onGenerateRoute: AppRouter.onGenerateRoute,
      home: const MainScreen(),
    );
  }
}
