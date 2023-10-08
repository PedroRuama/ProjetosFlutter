import 'package:flutter/material.dart';
import 'package:welcome/boasvindas.dart';
import 'package:welcome/boasvindas.dart';
import 'package:welcome/home.dart';
import 'package:welcome/controllers/prefs.dart';
import 'package:welcome/splash.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
   // This widget is the root of your application.
  
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Login com Shared Preferences',
      
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        ),

        initialRoute: '/',
        routes: {
          '/': (context) => const SplashPage(),
          '/boasvindas': (context) => const boasvindas(),  
          '/home': (context) => const home(),
        },
      


    );
  }
}
