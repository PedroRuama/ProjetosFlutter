import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:splash_screen/home.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.network('https://static.vecteezy.com/system/resources/thumbnails/011/653/653/small/eco-friendly-smart-city-logo-design-blue-fullcolor-png.png'),
      title: const Text('Titulo', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
      gradientBackground: const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color.fromARGB(255, 13, 118, 204),
          Colors.blue,
          
        ],
      ),
      // backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: const Text('Loading...'),
      navigator: const HomePage(),
      durationInSeconds: 3,
    );
  }
}