import 'package:flutter/material.dart';

// dependencies
import 'package:get/get.dart';

// views
import 'package:bookly_app/features/splash/presentation/views/splashView.dart';

// constants
import 'package:bookly_app/constants.dart';

void main() => runApp(const BooklyApp());

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true).copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: const SplashView(),
    );
  }
}
