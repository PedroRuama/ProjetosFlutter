import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, //alinhamento do espaço em branco dentro
          mainAxisAlignment: MainAxisAlignment.end,//alihamento na main
          children: <Widget>[
            Text('Telefone do usuário'),
            Text('Senha do usuário')
          ],
        ),
        )
    );
  }
}