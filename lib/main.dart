import 'package:flutter/material.dart';
import 'package:news/view_model/utils/theme/light_theme.dart';
import 'view/screens/home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UniToni',
      theme: lightTheme,
      home: HomeScreen(),
    );
  }
}