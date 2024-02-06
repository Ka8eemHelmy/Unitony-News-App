import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/view_model/data_source/network/dio_helper.dart';
import 'package:news/view_model/utils/theme/light_theme.dart';
import 'view/screens/home/news/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'UniToni',
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          home: child,
        );
      },
      child: HomeScreen(),
    );
  }
}