import 'package:e_commerce_app/models/shop.dart';
import 'package:e_commerce_app/page/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme/theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData?
      selectedTheme; // maybe send this to the home page later and do a toggle there
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: selectedTheme,

        body: SplashPage(), //HomePage(),
      ),
    );
  }
}
