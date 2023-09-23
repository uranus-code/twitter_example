import 'package:flutter/material.dart';
import 'package:twitter_example/constants.dart';
import 'package:twitter_example/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: kbackgroundColor,
        ),
        scaffoldBackgroundColor: kbackgroundColor,
        colorScheme: ColorScheme.fromSeed(seedColor: kprimaryColor),
        useMaterial3: true,
      ),
      home: MainScreen(),
    );
  }
}
