import 'dart:async';
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:login_shared_preferences/home.dart';

import 'package:login_shared_preferences/controllers/prefs.dart';
import 'package:login_shared_preferences/tela_login.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<Widget> futureCall() async {
    bool isAuth = await PrefsService.isAuth();
    await Future.delayed(Duration(seconds: 3));
    if(isAuth){
      return await Future.value(const home());
    }
    return await Future.value(const login());
  }


  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.network(''),
      title: const Text('Exemplo Login com Shared Preferences', 
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),

      gradientBackground: const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color.fromARGB(255, 8, 7, 10),
          Color.fromARGB(255, 38, 46, 53),
        ],
      ),
      // backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loaderColor: Colors.white,
      loadingText: const Text('Loading...', style: TextStyle(color: Colors.white),),

      futureNavigator: futureCall(),
      durationInSeconds: 3,
    );
  }
}