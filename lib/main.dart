import 'package:flutter/material.dart';
import 'package:shopapp/core/ulits/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Shop Now',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'SourceCodePro',
        iconTheme: IconThemeData(

          color: Colors.deepPurple
        ),
        // primarySwatch: Colors.deepPurple,
      appBarTheme: const AppBarTheme(
        color: Colors.white,

        elevation: 0
      )),
      themeMode: ThemeMode.light,
      routes: Routes.routes,
      initialRoute: Routes.onBoarding,
    );
  }
}
