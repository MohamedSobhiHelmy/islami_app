import 'package:flutter/material.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/home.dart';
import 'package:islami/sura_detailes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
      },
      theme: MyThemeData.lighttheme,
      darkTheme: MyThemeData.darktheme,
    );
  }
}
