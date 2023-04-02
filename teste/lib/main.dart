import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aula de PAM II'),
          centerTitle: true
        ),
        body: const Center(
          child: Text('O Flutter é um framework bacana!!!'),
        
        )
      )
    );

      
  }


}