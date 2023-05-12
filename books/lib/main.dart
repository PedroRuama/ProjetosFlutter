import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:books/widgets/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela Login', //  O tema utilizado, possui alguns outros atributos a serem configurados como primarySwatch, brightness, primaryColor e accentColor entre outros. No exemplo usamos apenas um primarySwatch é definindo a classe Colors, que implementa internamente as especificações de cores do Material Design.
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Login(), // a primeira tela do aplicativo 


    );
  }
}