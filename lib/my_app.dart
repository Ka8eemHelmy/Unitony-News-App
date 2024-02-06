import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view/screens/home/news/home_screen.dart';
import 'view_model/cubits/news_cubit/news_cubit.dart';
import 'view_model/utils/theme/light_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => NewsCubit(),),
          ],
          child: MaterialApp(
            title: 'UniToni',
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            home: child,
          ),
        );
      },
      child: const HomeScreen(),
    );
  }
}