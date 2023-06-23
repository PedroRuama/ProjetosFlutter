import 'package:flutter/material.dart';
import 'package:slash_screen/SplashPage.dart';
import 'package:slash_screen/home.dart';


class Tela_SB_MD extends StatefulWidget {
  const Tela_SB_MD({super.key});

  @override
  State<Tela_SB_MD> createState() => _Tela_SB_MDState();
}

class _Tela_SB_MDState extends State<Tela_SB_MD> {
  void btnDialog(){
    showDialog( 
    context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Mensagem DiaLog!'),
            titleTextStyle: TextStyle( fontSize: 30),
            content: Text('Este é o componente msg DiaLog.'),
            actions: [
              TextButton(onPressed: () => Navigator.pop(context, 'Ok'), 
              child: Text('OK')),
            ],
          );
        }
    );
  }
  void btnSnack(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Mensagem SnackBar!'),
        action: SnackBarAction(
          label: 'OK',
          onPressed: (){},
        ),
      )
    );
  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
      
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(8),
                
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Exibir MsgDialog'),
                    ),
                    ElevatedButton(
                      onPressed: btnDialog, 
                      style: ButtonStyle(
                        // shape: MaterialStateProperty.all(
                        //  new RoundedRectangleBorder(borderRadios: BorderRadius.circular(30.0)),
                        // ),
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
      
                      ),
                      child: Text(
                        "Dialog",
                        // style: TextStyle(),
                      ),
                      
                      
                      ),
                    
      
                  ],
      
                ),
              ),
            
            Container(
                padding: const EdgeInsets.all(8),
                
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Exibir SnackBar'),
                    ),
                    ElevatedButton(
                      onPressed: btnSnack, 
                      style: ButtonStyle(
                        // shape: MaterialStateProperty.all(
                        //  new RoundedRectangleBorder(borderRadios: BorderRadius.circular(30.0)),
                        // ),
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
      
                      ),
                      child: Text(
                        "SnackBar",
                        // style: TextStyle(),
                      ),
                      
                      
                      ),
                    
      
                  ],
      
                ),
              ),
          ],
      
          
          ),
      ),
    );
  }
}