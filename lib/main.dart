
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matn_uzz/pages/about_app_page.dart';
import 'package:matn_uzz/pages/about_project_page.dart';
import 'package:matn_uzz/pages/adv_page.dart';
import 'package:matn_uzz/pages/home_page.dart';
import 'package:matn_uzz/pages/splash_page.dart';

import 'blocs/create_correct_cubit.dart';
import 'blocs/create_suggestion_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        tabBarTheme: const TabBarTheme(
          labelColor: Color.fromRGBO(54, 68, 89, 1),
          indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Color.fromRGBO(249, 211, 150, 1))
          ),
        ),
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => CreateCorrect()),
          BlocProvider(create: (context) => CreateSuggestionCubit()),
        ],
        child: ScreenUtilInit(
            designSize: const Size(411, 731),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: () => const SplashPage()
        ),
      ),
      routes: {
        AboutPage.id : (context) => const AboutPage(),
        SplashPage.id: (context) => const SplashPage(),
        AdvPage.id: (context) => const AdvPage(),
        HomePage.id: (context) => const HomePage(),
        AboutProject.id: (context) => const AboutProject(),
      },
    );
  }
}

