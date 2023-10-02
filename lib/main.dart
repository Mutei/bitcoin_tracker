import 'package:flutter/material.dart';
import 'price_screen.dart';
import 'splash_screen.dart';
import 'welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: WelcomeScreen.Id,
      routes: {
        WelcomeScreen.Id: (context) => WelcomeScreen(),
        SplashScreen.Id: (context) => SplashScreen(),
        PriceScreen.Id: (context) => PriceScreen(),
      },
    );
  }
}
