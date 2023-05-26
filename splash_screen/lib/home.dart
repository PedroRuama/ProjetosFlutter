import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
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
              child: const Center(child: Text('Container 1')),
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