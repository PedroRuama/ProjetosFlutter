import 'package:flutter/material.dart';
import 'package:welcome/controllers/prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:welcome/home.dart';

class boasvindas extends StatefulWidget {
  const boasvindas({super.key});

  @override
  State<boasvindas> createState() => _boasvindasState();
}

class _boasvindasState extends State<boasvindas> {
  String q = '';
 

  @override
  void initState() {
    super.initState();
    PrefsService.isAuth();
  }


  void _onPressedButtonView() {
    bool view = true;
    PrefsService.save(view);
    // ViewController(loginTextController.text);
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => home()));
     
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 58, 127, 195),
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
                      
                      Divider(),
                      
                      ButtonTheme(
                        height: 60.0,
                        child: ElevatedButton(
                          onPressed: _onPressedButtonView,
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
                            "Avançar",
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
