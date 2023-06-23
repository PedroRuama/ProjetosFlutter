import 'package:flutter/material.dart';
import 'package:slash_screen/Tela_SB_MD.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  void btnSnack_Dialog(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Tela_SB_MD()));
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 3,
        children: [
          InkWell(
            onTap: (){},
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue.shade100,
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Tela SnackBar e MsgDialog'),
                  ),
                  ElevatedButton(
                    onPressed: btnSnack_Dialog, 
                    style: ButtonStyle(
                      // shape: MaterialStateProperty.all(
                      //  new RoundedRectangleBorder(borderRadios: BorderRadius.circular(30.0)),
                      // ),
                      backgroundColor: MaterialStateProperty.all(Colors.blue),

                    ),
                    child: Text(
                      "Ir para Tela",
                      // style: TextStyle(),
                    ),
                    
                    
                    ),
                  

                ],

              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue.shade200,
              child: const Center(child: Text('Container 2')),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue.shade300,
              child: const Center(child: Text('Container 3')),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue.shade400,
              child: const Center(child: Text('Container 4')),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue.shade500,
              child: const Center(child: Text('Container 5')),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue.shade600,
              child: const Center(child: Text('Container 6')),
            ),
        ],

        
        ),
    );
  }
}