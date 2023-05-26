import 'dart:html';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:books/controllers/login_controller.dart';
import 'package:books/widgets/home.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {
  late TextEditingController telefoneController;
  late TextEditingController senhaController;

  @override
  void initState() {
    super.initState();
    telefoneController = TextEditingController();
    senhaController = TextEditingController();
  }

  void dispose() {
    telefoneController.dispose();
    senhaController.dispose();
    super.dispose();
  }

  void onPressedButton() {
    var loginController =
        LoginController(telefoneController.text, senhaController.text);
    if (loginController.isValidLogin()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BooksApp()),
      );
      print("Login Correto!!!");
      print("Telefone   : ${telefoneController.text}");
      print("Senha      : ${senhaController.text}");
      print(" ");
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Login ou senha Incorretos'),
            titleTextStyle: TextStyle(color: Colors.red, fontSize: 30),
            content: Text('Por favor, tente novamente.'),
            actions: [
              TextButton(onPressed: () => Navigator.pop(context, 'Ok'), 
              child: Text('OK')),
            ],
          );
        }

      );
      telefoneController.clear();
      senhaController.clear();
      print("XXX Login incorreto XXX");
      print(" ");
      
    }
  }

 







  Widget build(BuildContext context) {
    return Scaffold(
       
        backgroundColor: Color.fromARGB(255, 230, 229, 228),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, //alinhamento do espaço em branco dentro
              mainAxisAlignment: MainAxisAlignment.center, //alihamento na main

              children: <Widget>[
                Container(
                  height: 600,
                  width: 500,
                  
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.circular(30.0)
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center, //alinhamento do espaço em branco dentro
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:const EdgeInsets.all(24.0),
                            
                          child: TextField(
                            controller: telefoneController,
                            autofocus: true,
                            keyboardType: TextInputType.number,
                            style: TextStyle(color: Colors.black, fontSize: 30),
                              
                            decoration: InputDecoration(
                              
                              labelText: "Telefone do usuário", 
                              labelStyle: TextStyle(color: Colors.black)),
                          ),
                        ),
                        Divider(),
                       Padding(
                         padding: const EdgeInsets.all(24.0),
                         child: TextField(
                          controller: senhaController,
                          autofocus: true,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          style: TextStyle(color: Colors.black, fontSize: 30),
                          decoration: InputDecoration(
                            labelText: "Senha do usuário",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                                             ),
                       ),
                        Divider(),
                        ButtonTheme(
                          height: 60.0,
                          child: ElevatedButton(
                            onPressed: onPressedButton,
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                Colors.amber
                              )
                            ),
                            child: Text(
                              "Enviar",
                              style: TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                        ), 
                      ],
                    ),
                  ),
                ), 
              ],
            ),
          ),
        ));
  }
}
