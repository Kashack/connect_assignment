import 'package:connect_assignment/presentation/constants/colors.dart';
import 'package:flutter/material.dart';

import 'presentation/screens/authentication/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black,primary: Colors.black),
        listTileTheme: ListTileThemeData(
          tileColor: AppColors.tileColor,

        ),
        // useMaterial3: true,
      ),
      home: SignInScreen(),
    );
  }
}

