import 'package:flutter/material.dart';

void main =>runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      title: 'Tela Login', 
      theme: ThemeData(primarySwatch: Colors.blue), 
      home: Login(),
    ),
  }
  
}