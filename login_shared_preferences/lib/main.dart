import 'package:flutter/material.dart';
import 'package:login_shared_preferences/tela_login.dart';
import 'package:login_shared_preferences/home.dart';
import 'package:login_shared_preferences/controllers/prefs.dart';
import 'package:login_shared_preferences/splash.dart';
void main() {
  runApp(const MyApp());
}
// Future<String> isAuth() async{
//     String initialHome = "/";   
//     print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~initialHome~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
//     bool isAuth = await PrefsService.isAuth();
  
//       if (isAuth == true) {
//       initialHome = "/home";
//       print('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~initialHome = $initialHome ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
//       return initialHome;
//     } else{
//       initialHome = "/login";
//       print('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~initialHome = $initialHome ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
//       return initialHome;
//     }
    
//  }


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
        // initialRoute:  "${isAuth()}", sem a necessidade de splash_screen
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashPage(),
          '/login': (context) => const login(),  
          '/home': (context) => const home(),
        },
      


    );
  }
}
