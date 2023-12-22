import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: (const Text(
          'Bookly App',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: const Center(
        child: Text("Bookly App"),
      ),
    );
  }
}
