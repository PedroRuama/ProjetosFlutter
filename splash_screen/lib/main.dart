// no terminal
// flutter pub add easy_splash_screen
// flutter pub get (para instalar o package no projeto)

import 'package:flutter/material.dart';
import 'package:slash_screen/SplashPage.dart';
import 'package:slash_screen/home.dart';

void main(){
  runApp (const MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => const SplashPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}