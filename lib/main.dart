import 'package:chatapp/domain/constants/apptheme.dart';
import 'package:chatapp/domain/constants/cubits/themecubit.dart';
import 'package:chatapp/domain/constants/cubits/themestates.dart';
import 'package:chatapp/repository/screens/onboarding%20screen/onboardingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(create: (context) => ThemeCubit(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, Themestates>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Onboardingscreen(),
          title: "Chat app",
          theme: State is LightThemeStates
              ? Apptheme.lightTheme
              : Apptheme.darkTheme,
        );
      },
    );
  }
}
