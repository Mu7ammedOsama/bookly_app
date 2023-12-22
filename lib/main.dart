import 'package:flutter/material.dart';

// views
import 'package:bookly_app/views/HomeView.dart';

void main() => runApp(const BooklyApp());

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const HomeView(),
    );
  }
}
