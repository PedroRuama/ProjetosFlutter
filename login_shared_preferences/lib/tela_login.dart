import 'package:flutter/material.dart';
import 'package:login_shared_preferences/controllers/loginController.dart';
import 'package:login_shared_preferences/controllers/prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String q = '';
  late TextEditingController loginTextController;
  late TextEditingController passwordTextController;

  @override
  void initState() {
    super.initState();
    loginTextController = TextEditingController();
    passwordTextController = TextEditingController();
    PrefsService.isAuth();
  }

  @override
  void dispose() {
    loginTextController.dispose();
    passwordTextController.dispose();
  }

  void _onPressedButtonLogin() {
    var loginController =
        LoginController(loginTextController.text, passwordTextController.text);
    if (loginController.isValid()) {
      Navigator.of(context).pushReplacementNamed('/home');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('LoginIncorreto'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 600,
                width: 500,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.circular(30.0)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .center, //alinhamento do espaço em branco dentro
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.supervisor_account, size: 100),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: TextField(
                          controller: loginTextController,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: TextStyle(color: Colors.black, fontSize: 30),
                          decoration: InputDecoration(
                              labelText: "Login",
                              labelStyle: TextStyle(color: Colors.black)),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: TextField(
                          controller: passwordTextController,
                          autofocus: true,
                          obscureText: true,
                          keyboardType: TextInputType.number,
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
                          onPressed: _onPressedButtonLogin,
                          autofocus: true,
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0)),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red)),
                          child: Text(
                            "Login",
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
      ),
    );
  }
}
