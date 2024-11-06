import 'package:flutter/material.dart';
import 'package:tugas2/loginScreen.dart';
import 'splashScreen.dart';
import 'homeScreen.dart';
import 'accountScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsi App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        textTheme: TextTheme(),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/account': (context) => AccountScreen(),
        '/profile': (context) => LoginScreen(),
      },
    );
  }
}
