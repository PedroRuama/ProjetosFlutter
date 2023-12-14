import 'package:flutter/material.dart';
import 'package:path/path.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
   // This widget is the root of your application.
  
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'SqlLite contact ',
      
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        ),
        // initialRoute:  "${isAuth()}", sem a necessidade de splash_screen
        initialRoute: '/',
        routes: {
          // '/': (context) => const SplashPage(),
  
        },
      


    );
  }
}
