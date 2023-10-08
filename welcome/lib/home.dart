import 'package:flutter/material.dart';
import 'package:welcome/controllers/prefs.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  void initState() {
    super.initState();
    PrefsService.isAuth();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login with Shared Prefs'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            PrefsService.logout();
            Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => true);
          }, icon: const Icon(Icons.logout))
        ],
      ),
      body: const Center(child: Text('Construa sua home'),),
    );
  }
}